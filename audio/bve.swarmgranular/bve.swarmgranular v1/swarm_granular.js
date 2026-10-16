/*
  swarm_granular.js  --  Reynolds-boid driven granular engine + live display
  Max / Max for Live  (jsui or v8ui, mgraphics)

  World: x = 0..1  (position in the live buffer, wraps like the circular buffer)
         y = 0..WH (pitch axis, top = high)
  Outlet 0 -> poly~ swarm_grain :  "target N"  then  "start_ms end_ms dur_ms gainL gainR cutoff_hz"
  Also on outlet 0 (split by [route rec buf] in the patch, jsui only has ONE outlet):
     "rec 0" / "rec 1" / "rec loop 0|1"   -> record~ swarmbuf
     "buf sizeinms N"                     -> buffer~ swarmbuf

  Swarm variable      -> Granular parameter
  ---------------------------------------------------------
  x                   -> playback position
  y                   -> pitch
  speed               -> transposition
  local density       -> grain rate
  neighbour count     -> grain duration
  centre of mass (x)  -> buffer scan offset
  swarm radius        -> stereo spread
*/
autowatch = 1;
inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var TWO_PI = Math.PI * 2;
var WH = 0.3;          // world height (keeps perception circles round on a ~3.3:1 display)
var MAXBOIDS = 64;
var NVOICES = 64;      // must match poly~ voice count
var TICK_MS = 8;
var DRAW_EVERY = 5;
var FEAR = 0.16;       // predator fear radius
var SEP_R = 0.035;     // separation radius

// ---- parameters (message name == key) ------------------------------------
var LEVEL = 1;          // grain output level is fixed
var PCT = { separation: 1, alignment: 1, cohesion: 1, wander: 1, attractor: 1, maxspeed: 1,
            wander_ybias: 1, scan_offset: 1, spread: 1, chaos: 1 };   // (density is handled separately: 0-100% = 0..4x)   // dials that arrive as percent (0-100)

var P = {
  separation: 0.55, alignment: 0.45, cohesion: 0.35,
  wander: 0.4,            // wander weight
  maxspeed: 0.22,         // buffer-widths / second
  attractor: 0,           // -1 repel .. +1 attract
  predators: 0,
  density: 1,             // grain density scale
  // wander controls
  wander_rate: 6,         // how fast the wander heading / noise changes
  wander_radius: 0.05,    // Reynolds wander circle radius
  wander_dist: 0.07,      // Reynolds wander circle distance
  wander_ybias: 0.5,      // 0 = wander only in time (x), 1 = equal in pitch (y)
  wander_mode: 0,         // 0 Reynolds circle, 1 flow noise, 2 Brownian
  // extras
  boids: 24,
  chord: 0,               // y axis selects a chord tone: index into CHORDS (0 = off = no pitch change)
  chaos: 0,               // 0..1 disorder in the flocking rules (see step())
  debug: 0,               // 1 = post grain statistics / high-pitched grains to the Max console
  scan_offset: 0,         // how much the centre of mass shifts the read position (fraction of buffer)
  spread: 1.0,
  perception: 0.05,
  attractor_auto: 0, live: 0, links: 1,
  info: 0,                // 1 = show the paged Info panel over the display
  play: 1                 // 1 = swarm running + grains firing, 0 = swarm paused, no new grains (running grains finish naturally)
};

// ---- state ---------------------------------------------------------------
var boids = [], preds = [], vizGrains = [];
var W = 560, H = 160, T = 0, lastT = Date.now(), tickN = 0;
var voice = 0, bufMs = 3000, wh = -1;
var CHORDS = [[0], [0, 4, 7], [0, 3, 7], [0, 3, 6], [0, 4, 8], [0, 2, 7], [0, 5, 7],               // Off, Major, Minor, Dim, Aug, Sus2, Sus4
              [0, 4, 7, 11], [0, 3, 7, 10], [0, 4, 7, 10], [0, 3, 6, 9], [0, 3, 6, 10], [0, 4, 7, 9], [0, 3, 7, 9]];  // Maj7, Min7, Dom7, Dim7, Min7b5, Maj6, Min6
var DEGREE = { 0: "R", 1: "b2", 2: "2", 3: "b3", 4: "3", 5: "4", 6: "b5", 7: "5", 8: "#5", 9: "6", 10: "b7", 11: "7" };
var disc = -1, wasLive = 0;          // disc = buffer position (ms) of the seam left where a recording was stopped early / Live was switched off
var rec = 0, recEnd = 0, recStart = 0, waveEmpty = true, vEnd = [], note = "", noteT = 0;
for (var vi_ = 0; vi_ < NVOICES; vi_++) vEnd.push(0);
var comX = 0.5, comY = WH / 2, swarmR = 0.1, overlap = 0;
var att = { x: 0.5, y: WH / 2 };
var wave = null, waveMax = 0.05, buf = null;
var emitCount = 0, gps = 0, gpsT = 0, dropCount = 0, dropPct = 0, VOICE_MARGIN = 80;
var sx_ = 0, sy_ = 0;

function clamp(v, a, b) { return v < a ? a : (v > b ? b : v); }
function wrap1(x) { return x - Math.floor(x); }
function wd(a, b) { var d = a - b; if (d > 0.5) d -= 1; else if (d < -0.5) d += 1; return d; }

// ---- messages ------------------------------------------------------------
function anything() {
  if (P.hasOwnProperty(messagename)) {
    var val = arguments[0];
    if (PCT[messagename]) val = val / 100;
    if (messagename === "density") val = arguments[0] / 25;                      // GrainDens: 0-100% = 0..4x (25% = 1x)
    if (messagename === "perception") val = 0.01 + (arguments[0] / 100) * 0.07;     // Percept dial: 0-100% = radius 0.01 .. 0.08
    P[messagename] = val;
    if (messagename === "boids") setBoids();
    if (messagename === "predators") setPreds();
    if (messagename === "live") setLive();
    if (messagename === "info") { infoPage = 0; mgraphics.redraw(); }
  }
}
// Record button: one-shot fill of the whole buffer (press again to stop early)
function record() {                           // any bang / message 'record' starts a fill
  if (P.live) { setNote("turn Live off to record"); return; }
  if (rec) stopRec(); else startRec();
}
function startRec() {
  rec = 1; disc = -1; recStart = Date.now(); recEnd = recStart + bufMs + 40;
  outlet(0, "rec", 0); outlet(0, "rec", "loop", 0); outlet(0, "rec", 1);
}
function stopRec() { if (rec && wh >= 0) disc = wh * bufMs; rec = 0; outlet(0, "rec", 0); }   // stopped early: remember the seam
function setLive() {                       // continuous loop-recording
  if (rec) rec = 0;
  outlet(0, "rec", 0);
  if (P.live) { disc = -1; outlet(0, "rec", "loop", 1); outlet(0, "rec", 1); }
  else if (wasLive && wh >= 0) disc = wh * bufMs;     // Live switched off: the write head leaves a seam (newest audio next to oldest)
  wasLive = P.live ? 1 : 0;
}
function bufsize(i) {                      // menu index 0..4 -> 1..5 s ; resizing clears the buffer
  var ms = (clamp(Math.round(i), 0, 4) + 1) * 1000;
  rec = 0; disc = -1; outlet(0, "rec", 0);
  bufMs = ms; outlet(0, "buf", "sizeinms", ms);
  wave = null; waveEmpty = true; vizGrains = [];
  if (P.live) { outlet(0, "rec", "loop", 1); outlet(0, "rec", 1); }
}
function setNote(t) { note = t; noteT = 2; }
function writehead(v) { wh = v; }
function bufms(v) { if (v > 0) bufMs = v; }
function reset() { boids = []; setBoids(); }
function scatter() { scatterAt(comX, comY, 12, 0.7); }   // explode the whole swarm outward from its centre

// ---- creation ------------------------------------------------------------
function mkBoid(cx, cy) {
  var a = Math.random() * TWO_PI, s = P.maxspeed * (0.3 + 0.5 * Math.random());
  return { x: wrap1(cx + (Math.random() - 0.5) * 0.15), y: clamp(cy + (Math.random() - 0.5) * 0.1, 0.01, WH - 0.01),
           vx: Math.cos(a) * s, vy: Math.sin(a) * s, wa: Math.random() * TWO_PI,
           acc: Math.random(), nc: 0, dens: 0, pulse: 0, boost: 0, cz: [0, 0, 0], tx: [], ty: [] };
}
function setBoids() {
  var n = clamp(Math.round(P.boids), 1, MAXBOIDS);
  var cx = Math.random(), cy = WH * (0.3 + 0.4 * Math.random());
  while (boids.length < n) boids.push(mkBoid(cx, cy));
  while (boids.length > n) boids.pop();
}
function setPreds() {
  var n = clamp(Math.round(P.predators), 0, 4);
  while (preds.length < n) preds.push({ x: Math.random(), y: Math.random() * WH, vx: 0, vy: 0, tgt: -1, t: 0, cool: 0, pulse: 0 });
  while (preds.length > n) preds.pop();
}

// ---- steering helper (result in sx_, sy_) --------------------------------
// Orbit moves the attractor on its own; if the Attractor dial is at 0 it pulls with a default strength of 0.5
function effAttr() { return Math.abs(P.attractor) > 0.001 ? P.attractor : (P.attractor_auto ? 0.5 : 0); }

function steer(dx, dy, vx, vy, speed, maxf) {
  var d = Math.sqrt(dx * dx + dy * dy);
  if (d < 1e-9) { sx_ = 0; sy_ = 0; return; }
  var k = speed / d, ex = dx * k - vx, ey = dy * k - vy;
  var m = Math.sqrt(ex * ex + ey * ey);
  if (m > maxf) { ex *= maxf / m; ey *= maxf / m; }
  sx_ = ex; sy_ = ey;
}
function scatterAt(x, y, power, radius) {
  var rad = radius || 0.2;
  for (var i = 0; i < boids.length; i++) {
    var b = boids[i], dx = wd(b.x, x), dy = b.y - y, d = Math.sqrt(dx * dx + dy * dy) + 1e-4;
    if (d < rad) {
      var w = 1 - d / rad, k = P.maxspeed * (power || 6) * w / d, ra = Math.random() * TWO_PI;
      b.vx += dx * k + Math.cos(ra) * P.maxspeed * 2 * w;       // radial kick + a little randomness
      b.vy += dy * k + Math.sin(ra) * P.maxspeed * 2 * w;
      b.boost = Math.max(b.boost, w); b.pulse = 1;               // boost lets the kick exceed max speed for a moment
    }
  }
}

// ---- simulation ----------------------------------------------------------
function step(dt) {
  var n = boids.length, ms = Math.max(0.005, P.maxspeed), mf = ms * 3;
  var PR = P.perception, PR2 = PR * PR, i, j, k;

  // attractor
  if (P.attractor_auto) {
    att.x = wrap1(0.5 + 0.42 * Math.sin(T * 0.31));
    att.y = WH * (0.5 + 0.38 * Math.sin(T * 0.53 + 1.3));
  }

  // predators
  for (k = 0; k < preds.length; k++) {
    var p = preds[k];
    p.t -= dt; p.cool -= dt; p.pulse *= Math.pow(0.02, dt);
    if (n && (p.tgt < 0 || p.tgt >= n || p.t <= 0)) {
      var best = 1e9, bi = 0;
      for (i = 0; i < n; i++) {
        var ddx = wd(boids[i].x, p.x), ddy = boids[i].y - p.y, dd = ddx * ddx + ddy * ddy;
        if (dd < best) { best = dd; bi = i; }
      }
      p.tgt = bi; p.t = 1 + Math.random();
    }
    if (n) {
      var tb = boids[p.tgt], tdx = wd(tb.x, p.x), tdy = tb.y - p.y;
      steer(tdx, tdy, p.vx, p.vy, ms * 1.15 + 0.03, mf * 1.5);
      p.vx += sx_ * dt; p.vy += sy_ * dt;
      var ps = Math.sqrt(p.vx * p.vx + p.vy * p.vy), pm = ms * 1.15 + 0.03;
      if (ps > pm) { p.vx *= pm / ps; p.vy *= pm / ps; }
      p.x = wrap1(p.x + p.vx * dt); p.y += p.vy * dt;
      if (p.y < 0) { p.y = 0; p.vy = Math.abs(p.vy); } else if (p.y > WH) { p.y = WH; p.vy = -Math.abs(p.vy); }
      if (Math.sqrt(tdx * tdx + tdy * tdy) < 0.02 && p.cool <= 0) {   // catch: scatter + loud grain
        p.cool = 1; p.pulse = 1; p.tgt = Math.floor(Math.random() * n); p.t = 2;
        scatterAt(tb.x, tb.y, 7);
        emitGrain(tb, 1.6);
      }
    }
  }

  // boids
  for (i = 0; i < n; i++) {
    var b = boids[i];
    var sepx = 0, sepy = 0, sepn = 0, avx = 0, avy = 0, cx = 0, cy = 0, cnt = 0, dsum = 0;
    for (j = 0; j < n; j++) {
      if (j === i) continue;
      var o = boids[j], dx = wd(o.x, b.x), dy = o.y - b.y, d2 = dx * dx + dy * dy;
      if (d2 < PR2) {
        var d = Math.sqrt(d2);
        cnt++; avx += o.vx; avy += o.vy; cx += dx; cy += dy; dsum += 1 - d / PR;
        if (d < SEP_R && d > 1e-6) { sepx -= dx / (d * d); sepy -= dy / (d * d); sepn++; }
      }
    }
    b.nc = cnt; b.dens = Math.min(1, dsum / 4);
    var fx = 0, fy = 0;
    // CHAOS: every boid's separation / alignment / cohesion weights drift randomly (some rules get switched off for a while,
    // others exaggerated), and boids are occasionally startled into a random direction. 0% = orderly flock.
    var wS = 1, wA = 1, wC = 1, chs = P.chaos * P.chaos;       // squared: the lower half of the dial is subtle
    if (chs > 0) {                                              // (skipped entirely at 0% = the plain, original flock)
      var dec = Math.exp(-dt * 0.8), sq = Math.sqrt(dt) * 1.6;
      for (k = 0; k < 3; k++) b.cz[k] = clamp(b.cz[k] * dec + (Math.random() * 2 - 1) * sq, -1.6, 1.6);
      wS = Math.max(0, 1 + chs * 0.7 * b.cz[0]); wA = Math.max(0, 1 + chs * 0.7 * b.cz[1]); wC = Math.max(0, 1 + chs * 0.7 * b.cz[2]);
      if (Math.random() < chs * 0.12 * dt) {
        var ka = Math.random() * TWO_PI, kp = ms * (0.3 + 0.5 * chs);
        b.vx += Math.cos(ka) * kp; b.vy += Math.sin(ka) * kp;
      }
    }
    if (sepn) { steer(sepx, sepy, b.vx, b.vy, ms, mf); fx += sx_ * P.separation * 3 * wS; fy += sy_ * P.separation * 3 * wS; }
    if (cnt) {
      steer(avx, avy, b.vx, b.vy, ms, mf);          fx += sx_ * P.alignment * 1.5 * wA; fy += sy_ * P.alignment * 1.5 * wA;
      steer(cx, cy, b.vx, b.vy, ms, mf);            fx += sx_ * P.cohesion * 1.5 * wC;  fy += sy_ * P.cohesion * 1.5 * wC;
    }

    // ---- wander (user controllable) ----
    var wf = P.wander, yb = P.wander_ybias, wx = 0, wy = 0;
    if (wf > 0) {
      if (P.wander_mode === 0) {            // Reynolds wander circle
        b.wa += (Math.random() * 2 - 1) * P.wander_rate * dt * 2;
        var sp = Math.sqrt(b.vx * b.vx + b.vy * b.vy), hx, hy;
        if (sp > 1e-6) { hx = b.vx / sp; hy = b.vy / sp; } else { hx = Math.cos(b.wa); hy = Math.sin(b.wa); }
        var tx = hx * P.wander_dist + Math.cos(b.wa) * P.wander_radius;
        var ty = hy * P.wander_dist + Math.sin(b.wa) * P.wander_radius;
        steer(tx, ty, b.vx, b.vy, ms, mf); wx = sx_ * 2; wy = sy_ * 2;
      } else if (P.wander_mode === 1) {     // smooth flow-field noise
        var r = P.wander_rate * 0.1;
        var ang = Math.PI * (Math.sin(b.x * 12.57 + T * r * 0.5 + b.y * 9) + Math.sin(b.y * 17 - T * r * 0.37 + b.x * 5.1));
        steer(Math.cos(ang), Math.sin(ang), b.vx, b.vy, ms, mf); wx = sx_ * 2; wy = sy_ * 2;
      } else {                              // Brownian kicks
        var kk = Math.min(1, P.wander_rate / 6) * mf * 3;
        wx = (Math.random() * 2 - 1) * kk; wy = (Math.random() * 2 - 1) * kk;
      }
      fx += wx * wf; fy += wy * wf * yb;
    }

    // attractor / repeller
    var aE = effAttr();
    if (Math.abs(aE) > 0.001) {
      var adx = wd(att.x, b.x), ady = att.y - b.y, ad = Math.sqrt(adx * adx + ady * ady);
      var sgn = aE > 0 ? 1 : -1;
      steer(adx * sgn, ady * sgn, b.vx, b.vy, ms * (sgn > 0 ? Math.min(1, ad / 0.08) : 1), mf);
      fx += sx_ * Math.abs(aE) * 3; fy += sy_ * Math.abs(aE) * 3;
    }

    // flee predators
    for (k = 0; k < preds.length; k++) {
      var q = preds[k], pdx = wd(b.x, q.x), pdy = b.y - q.y, pd = Math.sqrt(pdx * pdx + pdy * pdy);
      if (pd < FEAR) { steer(pdx, pdy, b.vx, b.vy, ms * 1.3, mf * 2); var w = (1 - pd / FEAR) * 6; fx += sx_ * w; fy += sy_ * w; }
    }

    // soft walls on y (pitch edges)
    var mg = 0.03;
    if (b.y < mg) fy += (mg - b.y) / mg * mf * 2;
    if (b.y > WH - mg) fy -= (b.y - (WH - mg)) / mg * mf * 2;

    // integrate
    b.vx += fx * dt; b.vy += fy * dt;
    var spd = Math.sqrt(b.vx * b.vx + b.vy * b.vy), lim = ms * (1 + 3 * b.boost);
    b.boost *= Math.pow(0.08, dt);                                   // overspeed fades over ~1 s
    if (spd > lim) { b.vx *= lim / spd; b.vy *= lim / spd; }
    else if (spd < ms * 0.15) {
      if (spd < 1e-9) { var ra = Math.random() * TWO_PI; b.vx = Math.cos(ra) * ms * 0.15; b.vy = Math.sin(ra) * ms * 0.15; }
      else { b.vx *= ms * 0.15 / spd; b.vy *= ms * 0.15 / spd; }
    }
    b.x = wrap1(b.x + b.vx * dt); b.y += b.vy * dt;
    if (b.y < 0) { b.y = 0; b.vy = Math.abs(b.vy); } else if (b.y > WH) { b.y = WH; b.vy = -Math.abs(b.vy); }
    b.pulse *= Math.pow(0.001, dt);
    if (tickN % 3 === 0) { b.tx.push(b.x); b.ty.push(b.y); if (b.tx.length > 16) { b.tx.shift(); b.ty.shift(); } }
  }

  // swarm statistics: centre of mass (circular in x) and radius
  if (n) {
    var sc = 0, ss = 0, my = 0;
    for (i = 0; i < n; i++) { sc += Math.cos(boids[i].x * TWO_PI); ss += Math.sin(boids[i].x * TWO_PI); my += boids[i].y; }
    var cxn = wrap1(Math.atan2(ss, sc) / TWO_PI); my /= n;
    var rs = 0;
    for (i = 0; i < n; i++) { var rx = wd(boids[i].x, cxn), ry = boids[i].y - my; rs += rx * rx + ry * ry; }
    rs = Math.sqrt(rs / n);
    var sm = 1 - Math.pow(0.05, dt);
    comX = wrap1(comX + wd(cxn, comX) * sm); comY += (my - comY) * sm; swarmR += (rs - swarmR) * sm;
  }
}

// fading of grain animations / pulses (also runs while stopped)
function fadeViz(dt) {
  for (var i = vizGrains.length - 1; i >= 0; i--) { vizGrains[i].life -= dt / 0.4; if (vizGrains[i].life <= 0) vizGrains.splice(i, 1); }
  if (!P.play) {
    for (i = 0; i < boids.length; i++) boids[i].pulse *= Math.pow(0.001, dt);
    for (i = 0; i < preds.length; i++) preds[i].pulse *= Math.pow(0.02, dt);
  }
}

// ---- grain engine --------------------------------------------------------
function boidRate(b) { return (1 + 11 * b.dens) * P.density; }                       // local density -> grain rate
function boidDur(b)  { return 220 - (220 - 25) * Math.min(1, b.nc / 10); }            // neighbour count -> duration (ms)

function fireGrains(dt) {
  var n = boids.length, i, k;
  if (!n) return;
  // 1) what the swarm wants: expected number of busy voices = sum(rate * hold time)
  var load = 0;
  for (i = 0; i < n; i++) {
    var b = boids[i];
    b.r_ = boidRate(b); b.d_ = boidDur(b);
    load += b.r_ * (b.d_ / 1000 + VOICE_MARGIN / 1000);
  }
  // 2) what the voice pool can sustain; if the swarm asks for more, thin ALL boids evenly
  //    (instead of the last boids in the list starving)
  var cap = 0.85 * NVOICES, sc = load > cap ? cap / load : 1;
  var ov = 0;
  for (i = 0; i < n; i++) ov += boids[i].r_ * sc * boids[i].d_ / 1000;
  overlap = ov > overlap ? ov : overlap + (ov - overlap) * 0.02;   // instant attack, slow release: no level spikes when boids converge
  // 3) fire, starting at a different boid every tick so nobody has permanent priority
  var start = tickN % n;
  for (k = 0; k < n; k++) {
    var bb = boids[(start + k) % n];
    bb.acc += bb.r_ * sc * dt;
    if (bb.acc >= 1) { bb.acc -= 1; emitGrain(bb, 1); }
    if (bb.acc > 2) bb.acc = 1;
  }
  gpsT += dt;
  if (gpsT >= 1 && P.debug) {
    var busy = 0; for (k = 0; k < NVOICES; k++) if (vEnd[k] > lastT) busy++;
    post("swarm dbg: " + dbg.n + " grains, ratio " + (dbg.n ? dbg.rmin.toFixed(2) + "-" + dbg.rmax.toFixed(2) : "-") + ", min cutoff " + (dbg.n ? Math.round(dbg.cmin) : "-") + " Hz, voices busy " + busy + "/" + NVOICES + ", dropped " + dropCount + "\n");
    dbg = { n: 0, rmin: 99, rmax: 0, cmin: 99999, posts: 0 };
  }
  if (gpsT >= 1) { gps = emitCount / gpsT; dropPct = 100 * dropCount / Math.max(1, emitCount + dropCount); emitCount = 0; dropCount = 0; gpsT = 0; }
}

// a voice is only re-used once its previous grain has fully finished (no stolen / cut-off grains = no clicks)
function allocVoice(now, durMs) {
  var best = -1, bt = 1e18;
  for (var v = 0; v < NVOICES; v++) if (now >= vEnd[v] && vEnd[v] < bt) { bt = vEnd[v]; best = v; }   // longest-idle free voice
  if (best < 0) return 0;
  vEnd[best] = now + durMs + VOICE_MARGIN;
  return best + 1;
}

var dbg = { n: 0, rmin: 99, rmax: 0, cmin: 99999, posts: 0 };
function dbgGrain(ratio, semis, cutoff, ny) {
  dbg.n++; dbg.rmin = Math.min(dbg.rmin, ratio); dbg.rmax = Math.max(dbg.rmax, ratio); dbg.cmin = Math.min(dbg.cmin, cutoff);
  if ((ratio > 1.5 || ratio < 0.6) && dbg.posts < 6) {
    dbg.posts++;
    post("swarm: pitched grain x" + ratio.toFixed(2) + " (" + semis.toFixed(1) + " st) y=" + ny.toFixed(2) + "\n");
  }
}

function emitGrain(b, loud) {
  var ny = b.y / WH;                                           // 0 = top (high), 1 = bottom (low)
  var chord = CHORDS[clamp(Math.round(P.chord), 0, CHORDS.length - 1)];
  var tone = clamp(Math.floor((1 - ny) * chord.length), 0, chord.length - 1);   // y -> chord tone (bottom = root, top = highest note)
  var semis = chord[tone];                                     // chord Off = [0] = no pitch change
  var ratio = Math.pow(2, semis / 12);
  var cutoff = ratio > 1 ? clamp(19000 / ratio, 1200, 19000) : 19000;   // anti-alias low-pass for pitched-up grains

  var posFrac = wrap1(b.x + (comX - 0.5) * P.scan_offset);     // x -> position, COM -> scan offset
  var durMs = boidDur(b) * (0.85 + 0.3 * Math.random());
  var spanMs = durMs * ratio;
  var startMs = posFrac * bufMs;
  var EDGE = 8;                                                // stay clear of the hard start/end of a recording
  if (spanMs >= bufMs - 2 * EDGE) return;
  startMs = clamp(startMs, EDGE, bufMs - EDGE - spanMs);       // no wrap inside a grain
  if ((rec || P.live) && wh >= 0) {                            // moving write head: never let a grain's read pointer cross it
    var D0 = ((wh * bufMs - startMs) % bufMs + bufMs) % bufMs;
    var D1 = D0 + (1 - ratio) * durMs;
    var M = 70;
    if (D0 < M || D0 > bufMs - M || D1 < M || D1 > bufMs - M) return;
  } else if (disc >= 0) {                                      // static buffer: avoid the seam left where recording was stopped
    if (startMs + spanMs >= disc - 15 && startMs <= disc + 90) return;
  }
  if (P.debug) dbgGrain(ratio, semis, cutoff, ny);

  var spreadAmt = Math.min(1, swarmR / 0.25) * P.spread;                    // swarm radius -> stereo spread
  var pan = clamp(wd(b.x, comX) / (swarmR * 2 + 0.02), -1, 1) * spreadAmt;
  // grains reading the same region add up coherently, so scale by overlap^0.7 (not sqrt)
  var amp = LEVEL * loud * 0.9 / Math.pow(Math.max(1, overlap), 0.7);
  var gl = Math.cos((pan + 1) * Math.PI / 4) * amp, gr = Math.sin((pan + 1) * Math.PI / 4) * amp;

  var vi = allocVoice(lastT, durMs);
  if (!vi) { dropCount++; return; }                                          // all voices busy: drop the grain rather than cut one off
  outlet(0, "target", vi);
  outlet(0, startMs, startMs + spanMs, durMs, gl, gr, cutoff);

  b.pulse = 1; emitCount++;
  if (vizGrains.length < 90 && (gps < 150 || Math.random() < 150 / gps)) vizGrains.push({ x: posFrac, w: spanMs / bufMs, y: b.y, life: 1, ny: ny });
}

// ---- buffer waveform -----------------------------------------------------
function updateWave() {
  try {
    if (!buf) buf = new Buffer("swarmbuf");
    var n = buf.framecount();
    if (!n) { wave = null; return; }
    var bins = Math.max(64, Math.min(400, Math.floor(W / 2)));
    if (!wave || wave.length !== bins) wave = new Array(bins);
    var mx = 0;
    for (var i = 0; i < bins; i++) {
      var idx = Math.floor(i / bins * n), cnt = Math.min(32, n - idx);
      var a = buf.peek(1, idx, cnt), m = 0;
      if (cnt === 1) m = Math.abs(a); else for (var k = 0; k < a.length; k++) { var v = Math.abs(a[k]); if (v > m) m = v; }
      wave[i] = m; if (m > mx) mx = m;
    }
    waveEmpty = mx < 1e-5;
    waveMax += (Math.max(0.02, mx) - waveMax) * 0.3;
  } catch (e) { buf = null; wave = null; }
}


// ---- Info panel ----------------------------------------------------------
// h = heading, p = paragraph, n = [name, description]
var INFO = [
  { h: "SWARM GRANULAR" },
  { p: "A live granular effect played by a flock of boids (Reynolds flocking). Audio is recorded into a 1-5 s buffer and every boid is an independent grain stream. Where a boid sits in the display decides WHAT it plays (x = position in the buffer) and its height picks a note of the chord; how crowded its neighbourhood is decides how OFTEN and how LONG its grains are. The output is 100% wet and the level is fixed." },
  { h: "Quick start" },
  { p: "1) Press Record to fill the buffer from the input (or switch Live on to loop-record continuously). 2) Press Play to start the swarm. 3) Drag in the display to move the attractor, shift-click to scatter the swarm. 4) Shape the behaviour with the panels. Use the little arrows at the top right of this panel to turn pages, press Info again to close." },
  { h: "Reading the display" },
  { p: "The waveform is the buffer (in Live mode newer audio is brighter). Each triangle is a boid: turquoise = high pitch, blue = low pitch, bigger = denser neighbourhood; a ring pulses when it fires a grain. Vertical bands show the buffer region a grain is reading. White cross = swarm centre of mass, faint circle = swarm radius (drives stereo width). Orange line = write head. Red diamonds = predators. Top right: buffer length, boid count, grains/s and the share of grains dropped when all voices are busy." },
  { h: "How the swarm drives the grains" },
  { n: ["x", "Playback position - the spot in the buffer a boid reads. The buffer wraps around, and so does the swarm."] },
  { n: ["y", "Chord tone - the display is split into one band per chord note: bottom band = root (no shift), top band = highest note. With Chord Off there is no pitch change."] },
  { n: ["Local density", "Grain rate - boids with many close neighbours fire up to 12 grains/s each, loners about 1/s (scaled by GrainDens)."] },
  { n: ["Neighbours", "Grain duration - from about 220 ms with no neighbours down to 25 ms with ten or more."] },
  { n: ["Centre of mass", "Buffer scan offset - the swarm's centre shifts every read position (amount set by ScanOfs)."] },
  { n: ["Swarm radius", "Stereo spread - a wide swarm pans wide, a tight swarm stays central (maximum set by Spread)."] },
  { h: "TRANSPORT (left)" },
  { n: ["Play / Stop", "Starts or pauses the swarm and grain firing. Sounding grains finish naturally. Record, Live and Buffer size still work while stopped."] },
  { n: ["Record", "A bang fills the whole buffer once from the input, then stops by itself. A second bang stops early. Ignored while Live is on."] },
  { n: ["Live", "Loop-records the input continuously so the grains always have fresh material. Grains avoid the write head to prevent clicks."] },
  { n: ["Info", "Shows or hides this panel. Hovering a control in Live also shows its description in Live's Info View."] },
  { n: ["Buffer size", "1-5 s length of the recording buffer. Changing it clears the buffer, record again afterwards."] },
  { h: "GRAINS" },
  { n: ["GrainDens", "0-100%. Global multiplier on every boid's grain rate (25% = normal rate, 100% = four times). If the voice pool is full, all boids are thinned evenly."] },
  { n: ["Spread", "0-100%. Maximum stereo width. Actual width also follows the swarm radius."] },
  { n: ["ScanOfs", "0-100%. How far the swarm's centre of mass shifts all read positions, as a share of the buffer."] },
  { n: ["Chord", "Off (default) or a 3/4-note chord: Major, Minor, Dim, Aug, Sus2, Sus4, Maj7, Min7, Dom7, Dim7, Min7b5, Maj6, Min6. The vertical position of a boid picks which chord tone its grains are transposed to, relative to the original pitch (root = no shift). Off = no pitch deviation."] },
  { h: "FLOCKING (right)" },
  { n: ["Separate", "0-100%. How strongly boids avoid crowding each other. High = spread out, fewer neighbours, sparser and longer grains."] },
  { n: ["Align", "0-100%. How strongly boids copy their neighbours' heading and speed. High = the flock sweeps through the buffer as one."] },
  { n: ["Cohesion", "0-100%. How strongly boids steer toward the middle of their neighbours. High = tight clumps, dense and short grains."] },
  { n: ["Percept", "0-100%. Neighbour radius (maps to 0.01-0.08 of the buffer width). A boid only reacts to, and counts, neighbours inside it. Larger = more neighbours, shorter grains, stronger flocking."] },
  { n: ["Chaos", "0-100%. Disorder in the flocking rules: each boid's separation, alignment and cohesion drift randomly (rules switch off for a while or get exaggerated) and boids are now and then startled in a random direction. The dial is squared, so the lower half is subtle. 0 = the plain, orderly flock."] },
  { n: ["MaxSpeed", "2-100%. Top speed of the boids. Sets how fast the playheads sweep."] },
  { n: ["Boids", "2-64. Number of boids, i.e. number of simultaneous grain streams."] },
  { h: "WANDER" },
  { n: ["Wander", "0-100%. Strength of the random exploring force. The controls below shape its character."] },
  { n: ["W.Rate", "How fast the wander changes: heading jitter (Reynolds), flow-field speed (Noise) or kick strength (Brownian)."] },
  { n: ["W.Radius", "Reynolds mode: size of the wander circle. Larger = wilder turns."] },
  { n: ["W.Dist", "Reynolds mode: how far ahead the wander circle sits. Larger = smoother, straighter paths."] },
  { n: ["W.YBias", "0-100%. How much wander goes into the vertical direction. 0 = boids wander through time only and keep their pitch/filter/volume, 100 = equal in both."] },
  { n: ["Mode", "Reynolds (steer toward a point on a circle ahead), Noise (drift along a smooth flow field) or Brownian (random kicks)."] },
  { h: "FORCES" },
  { n: ["Attractor", "-100% to +100%. Pulls boids toward a point (positive) or pushes them away (negative). Drag in the display to move it. 0 = off."] },
  { n: ["Orbit", "Moves the attractor along a looping path on its own (pulls at 50% if Attractor is 0). Overrides mouse dragging."] },
  { n: ["Predators", "0-4. Hunters that chase boids. Boids flee when one is near; a catch scatters the boid and fires one loud grain."] },
  { n: ["Scatter", "Blows the swarm outward from its centre. Shift-click in the display scatters around the click point."] },
  { n: ["Reset", "Respawns all boids in a fresh random cluster."] }
];
var infoPage = 0, infoCache = null, infoBtn = null;

function wrapInfo() {
  var g = mgraphics;
  g.select_font_face("Arial"); g.set_font_size(9);
  function meas(t) { try { return g.text_measure(t)[0]; } catch (e) { return t.length * 4.6; } }
  var padX = 12, nameCol = 82, full = W - padX * 2, lines = [], i, j;
  function wrap(text, width, x0, nameStr) {
    var words = text.split(" "), cur = "", first = true;
    for (j = 0; j < words.length; j++) {
      var test = cur ? cur + " " + words[j] : words[j];
      if (meas(test) > width && cur) { lines.push({ t: cur, x: x0, name: first ? nameStr : null }); first = false; cur = words[j]; }
      else cur = test;
    }
    lines.push({ t: cur, x: x0, name: first ? nameStr : null });
  }
  for (i = 0; i < INFO.length; i++) {
    var e = INFO[i];
    if (e.h) lines.push({ h: e.h, x: padX });
    else if (e.p) wrap(e.p, full, padX, null);
    else if (e.n) wrap(e.n[1], full - nameCol, padX + nameCol, e.n[0]);
  }
  var lpp = Math.max(4, Math.floor((H - 34) / 11)), pages = [], cur2 = [];
  for (i = 0; i < lines.length; i++) {
    if (lines[i].h && cur2.length >= lpp - 2 && cur2.length > 0) { pages.push(cur2); cur2 = []; }   // keep a heading with its text
    cur2.push(lines[i]);
    if (cur2.length >= lpp) { pages.push(cur2); cur2 = []; }
  }
  if (cur2.length) pages.push(cur2);
  infoCache = { W: W, H: H, pages: pages };
}

function drawInfo() {
  var g = mgraphics;
  if (!infoCache || infoCache.W !== W || infoCache.H !== H) wrapInfo();
  var pages = infoCache.pages;
  infoPage = clamp(infoPage, 0, pages.length - 1);
  g.set_source_rgba(0.04, 0.05, 0.075, 1); g.rectangle(0, 0, W, H); g.fill();
  g.select_font_face("Arial"); g.set_font_size(9);
  g.set_source_rgba(0.72, 0.9, 1, 1); g.move_to(12, 13); g.show_text("INFO");
  // page arrows (top right)
  infoBtn = { prev: [W - 92, 3, 24, 14], next: [W - 34, 3, 24, 14] };
  var bt = [infoBtn.prev, infoBtn.next];
  for (var q = 0; q < 2; q++) {
    var r = bt[q], cx = r[0] + r[2] / 2, cy = r[1] + r[3] / 2, dir = q === 0 ? -1 : 1;
    g.set_source_rgba(1, 1, 1, 0.14); g.rectangle(r[0], r[1], r[2], r[3]); g.fill();
    g.set_source_rgba(0.72, 0.9, 1, 1);
    g.move_to(cx + dir * 4, cy); g.line_to(cx - dir * 3, cy - 5); g.line_to(cx - dir * 3, cy + 5); g.close_path(); g.fill();
  }
  var pg = (infoPage + 1) + " / " + pages.length, pw; try { pw = g.text_measure(pg)[0]; } catch (e3) { pw = pg.length * 4.6; }
  g.set_source_rgba(0.86, 0.88, 0.92, 1); g.move_to(W - 63 - pw / 2, 13); g.show_text(pg);
  g.set_line_width(1); g.set_source_rgba(1, 1, 1, 0.12); g.move_to(10, 19); g.line_to(W - 10, 19); g.stroke();
  var ls = pages[infoPage], y = 32;
  for (var i = 0; i < ls.length; i++, y += 11) {
    var l = ls[i];
    if (l.h) { g.set_font_size(10); g.set_source_rgba(0.45, 0.7, 1, 1); g.move_to(l.x, y); g.show_text(l.h); g.set_font_size(9); continue; }
    if (l.name) { g.set_source_rgba(0.72, 0.9, 1, 1); g.move_to(12, y); g.show_text(l.name); }
    g.set_source_rgba(0.86, 0.88, 0.92, 1); g.move_to(l.x, y); g.show_text(l.t);
  }
}

// ---- drawing -------------------------------------------------------------
// turquoise (high pitch) -> blue (low pitch), used for boids and grain animations
var C_LIGHT = [0.25, 0.9, 0.84], C_DARK = [0.2, 0.42, 1.0];
function blueColor(ny) {
  var t = clamp(ny, 0, 1);                       // 0 = top = high pitch = turquoise
  return [C_LIGHT[0] + (C_DARK[0] - C_LIGHT[0]) * t, C_LIGHT[1] + (C_DARK[1] - C_LIGHT[1]) * t, C_LIGHT[2] + (C_DARK[2] - C_LIGHT[2]) * t];
}
function PX(x) { return x * W; }
function PY(y) { return y / WH * H; }

function paint() {
  try { var s = mgraphics.size; if (s && s[0] > 0) { W = s[0]; H = s[1]; } } catch (e) {}
  var g = mgraphics, i, k;
  if (P.info) { drawInfo(); return; }
  g.set_source_rgba(0.055, 0.065, 0.085, 1); g.rectangle(0, 0, W, H); g.fill();

  // waveform (brighter = more recently recorded)
  if (wave) {
    var n = wave.length, groups = 12, per = Math.ceil(n / groups), mid = H / 2;
    g.set_line_width(Math.max(1, W / n));
    for (var gi = 0; gi < groups; gi++) {
      var i0 = gi * per, i1 = Math.min(n, i0 + per); if (i0 >= n) break;
      var mp = ((i0 + i1) / 2) / n, al;
      if (rec) al = (mp < wh) ? 0.65 : 0.15;                       // already recorded vs. old content
      else if (P.live && wh >= 0) al = 0.6 - 0.4 * wrap1(wh - mp);  // newest = brightest
      else al = 0.55;
      g.set_source_rgba(0.25, 0.7, 0.8, al);
      for (i = i0; i < i1; i++) {
        var x = (i + 0.5) / n * W, a = Math.min(1, wave[i] / waveMax) * H * 0.44;
        g.move_to(x, mid - a); g.line_to(x, mid + a);
      }
      g.stroke();
    }
  } else {
    g.set_source_rgba(1, 1, 1, 0.25); g.select_font_face("Arial"); g.set_font_size(10);
    g.move_to(10, H / 2); g.show_text("waiting for buffer~ swarmbuf ...");
  }
  if (wave && waveEmpty && !rec) {
    g.set_source_rgba(1, 1, 1, 0.4); g.select_font_face("Arial"); g.set_font_size(10);
    g.move_to(W / 2 - 80, H / 2 - 4); g.show_text("buffer empty - press REC (or enable Live)");
  }
  if (rec) {                                                       // record indicator + progress bar
    g.set_source_rgba(1, 0.2, 0.2, 0.9); g.move_to(W - 14 + 4, 0);
    g.rectangle(0, H - 3, W * clamp((Date.now() - recStart) / bufMs, 0, 1), 3); g.fill();
    g.move_to(34, 12); g.arc(30, 12, 4, 0, TWO_PI); g.fill();
    g.set_font_size(9); g.move_to(38, 15); g.show_text("REC");
  }
  if (noteT > 0) { g.set_source_rgba(1, 0.85, 0.3, 0.9); g.set_font_size(9); g.move_to(60, 15); g.show_text(note); }

  // pitch grid
  g.set_line_width(1); g.set_source_rgba(1, 1, 1, 0.08);
  g.move_to(0, H / 2); g.line_to(W, H / 2); g.stroke();
  g.select_font_face("Arial"); g.set_font_size(8); g.set_source_rgba(1, 1, 1, 0.35);
  var cn = CHORDS[clamp(Math.round(P.chord), 0, CHORDS.length - 1)];
  if (cn.length > 1) {                                           // chord bands: bottom = root ... top = highest chord tone
    for (var cb = 0; cb < cn.length; cb++) {
      var yTop = H * (1 - (cb + 1) / cn.length), yMid = H * (1 - (cb + 0.5) / cn.length);
      if (cb < cn.length - 1) { g.set_source_rgba(1, 1, 1, 0.1); g.move_to(0, yTop); g.line_to(W, yTop); g.stroke(); }
      g.set_source_rgba(1, 1, 1, 0.5); g.move_to(4, yMid + 3); g.show_text(DEGREE[cn[cb]] + "  (+" + cn[cb] + ")");
    }
  }

  // grain read-regions on the buffer
  for (i = 0; i < vizGrains.length; i++) {
    var vg = vizGrains[i], c = blueColor(vg.ny), gx = PX(vg.x), gw = Math.max(2, vg.w * W);
    g.set_source_rgba(c[0], c[1], c[2], vg.life * 0.22); g.rectangle(gx, 0, gw, H); g.fill();
    g.set_source_rgba(c[0], c[1], c[2], vg.life * 0.9); g.rectangle(gx, PY(vg.y) - 1, gw, 2); g.fill();
  }

  // neighbour links
  if (P.links && boids.length <= 40) {
    g.set_line_width(1); g.set_source_rgba(1, 1, 1, 0.07);
    var PR2 = P.perception * P.perception;
    for (i = 0; i < boids.length; i++) for (k = i + 1; k < boids.length; k++) {
      var dx = wd(boids[k].x, boids[i].x), dy = boids[k].y - boids[i].y;
      if (dx * dx + dy * dy < PR2 && Math.abs(boids[k].x - boids[i].x) < 0.5) {
        g.move_to(PX(boids[i].x), PY(boids[i].y)); g.line_to(PX(boids[k].x), PY(boids[k].y));
      }
    }
    g.stroke();
  }

  // boids: trails, pulse rings, bodies
  for (i = 0; i < boids.length; i++) {
    var b = boids[i], col = blueColor(b.y / WH), px = PX(b.x), py = PY(b.y);
    g.set_line_width(1);
    for (k = 1; k < b.tx.length; k++) {
      if (Math.abs(b.tx[k] - b.tx[k - 1]) > 0.5) continue;
      g.set_source_rgba(col[0], col[1], col[2], 0.35 * k / b.tx.length);
      g.move_to(PX(b.tx[k - 1]), PY(b.ty[k - 1])); g.line_to(PX(b.tx[k]), PY(b.ty[k])); g.stroke();
    }
    var r = 3 + 2.2 * b.dens;
    if (b.pulse > 0.03) {
      g.set_source_rgba(col[0], col[1], col[2], b.pulse * 0.8);
      g.move_to(px + r + (1 - b.pulse) * 16, py); g.arc(px, py, r + (1 - b.pulse) * 16, 0, TWO_PI); g.stroke();
    }
    var ang = Math.atan2(b.vy * H / WH, b.vx * W);
    g.set_source_rgba(col[0], col[1], col[2], 1);
    g.move_to(px + Math.cos(ang) * r * 1.6, py + Math.sin(ang) * r * 1.6);
    g.line_to(px + Math.cos(ang + 2.5) * r, py + Math.sin(ang + 2.5) * r);
    g.line_to(px + Math.cos(ang - 2.5) * r, py + Math.sin(ang - 2.5) * r);
    g.close_path(); g.fill();
  }

  // predators
  for (i = 0; i < preds.length; i++) {
    var p = preds[i], qx = PX(p.x), qy = PY(p.y), rr = 8 + p.pulse * 6;
    g.set_line_width(1); g.set_source_rgba(1, 0.2, 0.2, 0.15);
    g.move_to(qx + FEAR * W, qy); g.arc(qx, qy, FEAR * W, 0, TWO_PI); g.stroke();
    g.set_source_rgba(1, 0.25 + p.pulse * 0.5, 0.25, 1);
    g.move_to(qx, qy - rr); g.line_to(qx + rr, qy); g.line_to(qx, qy + rr); g.line_to(qx - rr, qy); g.close_path(); g.fill();
  }

  // attractor
  if (Math.abs(effAttr()) > 0.001) {
    var ax = PX(att.x), ay = PY(att.y), pr = 8 + 3 * Math.sin(T * 4), pos = effAttr() > 0;
    g.set_line_width(1.5); g.set_source_rgba(pos ? 0.3 : 1, pos ? 1 : 0.6, pos ? 0.5 : 0.2, 0.9);
    g.move_to(ax + pr, ay); g.arc(ax, ay, pr, 0, TWO_PI); g.stroke();
    g.move_to(ax + pr * 2 * (1 - (T * 1.5) % 1) , ay); g.arc(ax, ay, pr * 2 * (pos ? 1 - (T * 1.5) % 1 : (T * 1.5) % 1), 0, TWO_PI);
    g.set_source_rgba(pos ? 0.3 : 1, pos ? 1 : 0.6, pos ? 0.5 : 0.2, 0.3); g.stroke();
  }

  // centre of mass + swarm radius (= stereo spread)
  var cx = PX(comX), cy = PY(comY);
  g.set_line_width(1); g.set_source_rgba(1, 1, 1, 0.5);
  g.move_to(cx - 6, cy); g.line_to(cx + 6, cy); g.move_to(cx, cy - 6); g.line_to(cx, cy + 6); g.stroke();
  g.set_source_rgba(1, 1, 1, 0.18); g.move_to(cx + swarmR * W, cy); g.arc(cx, cy, swarmR * W, 0, TWO_PI); g.stroke();

  // write head
  if (wh >= 0 && (rec || P.live)) {
    g.set_line_width(2); g.set_source_rgba(0, 0, 0, 0.);
    g.move_to(PX(wh), 0); g.line_to(PX(wh), H); g.stroke();
  }

  // HUD (right-aligned in the top right corner)
  var hud = "buf " + (bufMs / 1000) + "s  boids " + boids.length + "  grains/s " + Math.round(gps) + (dropPct > 1 ? " (" + Math.round(dropPct) + "% dropped)" : "") +
            "  R " + swarmR.toFixed(2) + "  COM " + comX.toFixed(2) + (P.live ? "  LIVE" : "");
  g.select_font_face("Arial"); g.set_font_size(8);
  var hw; try { hw = g.text_measure(hud)[0]; } catch (e2) { hw = hud.length * 4.3; }
  g.set_source_rgba(1, 1, 1, 0.55); g.move_to(W - 4 - hw, 9); g.show_text(hud);
  if (!P.play) { g.set_font_size(10); g.set_source_rgba(1, 1, 1, 0.5); g.move_to(W / 2 - 22, 12); g.show_text("STOPPED"); }
}

// ---- mouse: drag = move attractor, shift = scatter ------------------------
function mouseSet(x, y, shift) {
  att.x = clamp(x / W, 0, 0.999); att.y = clamp(y / H * WH, 0, WH);
  if (shift) scatterAt(att.x, att.y, 6);
}
function hit(r, x, y) { return r && x >= r[0] && x <= r[0] + r[2] && y >= r[1] && y <= r[1] + r[3]; }
function onclick(x, y, but, cmd, shift) {
  if (P.info) {                                   // Info panel: use the little arrows at the top right
    var np = infoCache ? infoCache.pages.length : 1;
    if (infoBtn && hit(infoBtn.prev, x, y)) infoPage = (infoPage + np - 1) % np;
    else if (infoBtn && hit(infoBtn.next, x, y)) infoPage = (infoPage + 1) % np;
    mgraphics.redraw(); return;
  }
  mouseSet(x, y, shift);
}
function ondrag(x, y, but, cmd, shift) { if (!P.info) mouseSet(x, y, shift); }
function onresize(w, h) { W = w; H = h; mgraphics.redraw(); }

// ---- main loop -----------------------------------------------------------
function tick() {
  var now = Date.now(), dt = (now - lastT) / 1000; lastT = now;
  dt = clamp(dt, 0.001, 0.05); T += dt; tickN++;
  if (rec && now >= recEnd) rec = 0;                // record~ stops itself at the end of the buffer
  if (noteT > 0) noteT -= dt;
  if (P.play) { step(dt); fireGrains(dt); }
  else { gps = 0; emitCount = 0; gpsT = 0; }
  fadeViz(dt);
  if (tickN % 16 === 0) updateWave();
  if (tickN % DRAW_EVERY === 0) mgraphics.redraw();
}
function notifydeleted() { tk.cancel(); }

setBoids(); setPreds();
var tk = new Task(tick, this);
tk.interval = TICK_MS;
tk.repeat();

function bang() { record(); }   // a plain bang into the jsui also triggers a record

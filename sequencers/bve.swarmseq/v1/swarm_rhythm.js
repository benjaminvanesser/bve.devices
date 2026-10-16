// swarm_rhythm.js  -- use in [jsui]  (mgraphics version)
autowatch = 1;

mgraphics.init();
mgraphics.relative_coords = 0;   // pixel coordinates, origin top-left
mgraphics.autofill = 0;

var W = 260, H = 159;
var MAXN = 100;

var N = 16, nsteps = 16, cur = -1, TL = 8;
var running = 1;                   // start/stop
var clockmode = 0;                 // 0 = phasor~, 1 = metro
var lastT = 0, lastDt = 0;         // tick timing, used to detect transport restarts
var P = { coh:0.5, sep:0.5, ali:0.5, chaos:0.15, spd:0.4, att:0.3,
          dens:0.85, vis:0.3, poly:4 };
var rootNote = 48, nOct = 2, scl = 0, velLo = 40, velHi = 120;
var wanderOn = 1;
var stepStr = "16n", stepTicks = 120;   // step speed (480 ticks per quarter)
var lenStr  = "16n", lenTicks  = 120;   // note length, independent of step speed
var tgt = { x:0.5, y:0.5, vx:0.003, vy:0.002 };
var agents = [], notes = [];

// order must match the "scale" menu
var SCALES = [
  [0,2,4,5,7,9,11],              // Ionian
  [0,2,3,5,7,9,10],              // Dorian
  [0,1,3,5,7,8,10],              // Phrygian
  [0,2,4,6,7,9,11],              // Lydian
  [0,2,4,5,7,9,10],              // Mixolydian
  [0,2,3,5,7,8,10],              // Aeolian
  [0,1,3,5,6,8,10],              // Locrian
  [0,2,4,6,8,10],                // Messiaen 1
  [0,1,3,4,6,7,9,10],            // Messiaen 2
  [0,2,3,4,6,7,8,10,11],         // Messiaen 3
  [0,1,2,5,6,7,8,11],            // Messiaen 4
  [0,1,5,6,7,11],                // Messiaen 5
  [0,2,4,5,6,8,10,11],           // Messiaen 6
  [0,1,2,3,5,6,7,8,9,11],        // Messiaen 7
  [0,2,4,7,9],                   // Pentatonic
  [0,3,5,6,7,10],                // Blues
  [0,2,3,7,8],                   // Hirajoshi
  [0,1,2,3,4,5,6,7,8,9,10,11]    // Chromatic
];

// order must match the "rate" and "length" menus
var RATES = ["1nd","1n","1nt","2nd","2n","2nt","4nd","4n","4nt","8nd","8n","8nt",
             "16nd","16n","16nt","32nd","32n","32nt","64nd","64n","64nt",
             "128nd","128n","128nt"];

function clamp(v, lo, hi) { return Math.min(hi, Math.max(lo, v)); }

// ---------- parameters ----------
function run(v)        { running = v ? 1 : 0; }
function clock(v)      { clockmode = v ? 1 : 0; cur = -1; lastT = 0; lastDt = 0; }
function cohesion(v)   { P.coh   = clamp(v,0,1); }
function separation(v) { P.sep   = clamp(v,0,1); }
function alignment(v)  { P.ali   = clamp(v,0,1); }
function chaos(v)      { P.chaos = clamp(v,0,1); }
function speed(v)      { P.spd   = clamp(v,0,1); }
function attract(v)    { P.att   = clamp(v,0,1); }
function density(v)    { P.dens  = clamp(v,0,1); }
function vision(v)     { P.vis   = clamp(v,0,1); }
function poly(n)       { P.poly  = clamp(Math.round(n),1,MAXN); }
function count(n) {
  N = clamp(Math.round(n), 1, MAXN);
  while (agents.length < N) agents.push(mk());
  agents.length = N;
  TL = N > 60 ? 3 : (N > 30 ? 6 : 10);
}
function steps(n)   { nsteps = clamp(Math.round(n), 1, 64); if (cur >= nsteps) cur = -1; }
function root(n)    { rootNote = clamp(Math.round(n), 0, 100); buildNotes(); }
function octaves(n) { nOct = clamp(Math.round(n), 1, 5); buildNotes(); }
function scale(i)   { scl = clamp(Math.round(i), 0, SCALES.length - 1); buildNotes(); }
function velmin(v)  { velLo = clamp(Math.round(v), 1, 127); }
function velmax(v)  { velHi = clamp(Math.round(v), 1, 127); }
function wander(v)  { wanderOn = v ? 1 : 0; }
function target(x, y) { wanderOn = 0; tgt.x = clamp(x,0,1); tgt.y = clamp(y,0,1); }
function reset()    { agents = []; for (var i = 0; i < N; i++) agents.push(mk()); }
function rewind()   { cur = -1; }

// ---------- time values (Max time syntax) ----------
function norm(s) {                                    // "720" -> "720i"
  s = String(s);
  if (/^\d+(\.\d+)?$/.test(s)) s += "i";
  return s;
}
function rateTicks(s) {
  var m = /^(\d+(\.\d+)?)n([td]?)$/.exec(s);          // 4n, 16nt, 8nd ...
  if (m) {
    var t = 1920 / parseFloat(m[1]);
    if (m[3] === "t") t *= 2/3;
    if (m[3] === "d") t *= 1.5;
    return t;
  }
  m = /^(\d+(\.\d+)?)i$/.exec(s);                     // 480i = ticks
  if (m) return parseFloat(m[1]);
  return null;
}

// step speed: sent as a bare time value to phasor~ (and metro)
function setRate(str) {
  str = norm(str);
  var t = rateTicks(str);
  if (t === null || !(t > 0)) { post("swarm: bad rate " + str + "\n"); return; }
  stepStr = str; stepTicks = t;
  lastT = 0; lastDt = 0;                              // forget old tick interval
  sendClock();
}
function ratei(i) { setRate(RATES[clamp(Math.round(i), 0, RATES.length - 1)]); }
function rate()   { var a = arrayfromargs(arguments); setRate(a[0]); }
function sendClock() { outlet(0, stepStr); }          // e.g. "16n" -> phasor~ / metro
function loadbang()  { sendClock(); }

// note length: independent of step speed
function setLen(str) {
  str = norm(str);
  var t = rateTicks(str);
  if (t === null || !(t > 0)) { post("swarm: bad length " + str + "\n"); return; }
  lenStr = str; lenTicks = t;
}
function leni(i)    { setLen(RATES[clamp(Math.round(i), 0, RATES.length - 1)]); }
function notelen()  { var a = arrayfromargs(arguments); setLen(a[0]); }

function buildNotes() {
  notes = [];
  var s = SCALES[scl];
  for (var o = 0; o < nOct; o++)
    for (var i = 0; i < s.length; i++) notes.push(clamp(rootNote + 12*o + s[i], 0, 127));
  notes.push(clamp(rootNote + 12*nOct, 0, 127));
}

// ---------- colour (blues only) ----------
function hue2rgb(p, q, t) {
  if (t < 0) t += 1; if (t > 1) t -= 1;
  if (t < 1/6) return p + (q - p) * 6 * t;
  if (t < 1/2) return q;
  if (t < 2/3) return p + (q - p) * (2/3 - t) * 6;
  return p;
}
function hsl(h, s, l) {
  h = (((h % 360) + 360) % 360) / 360;
  var q = l < 0.5 ? l * (1 + s) : l + s - l * s, p = 2 * l - q;
  return [hue2rgb(p, q, h + 1/3), hue2rgb(p, q, h), hue2rgb(p, q, h - 1/3)];
}
var HUE_LIGHT = 195, HUE_DEEP = 235;
function pickHue() {
  return HUE_LIGHT + Math.pow(Math.random(), 1.8) * (HUE_DEEP - HUE_LIGHT);
}
function shade(h) {
  if (h === undefined) h = HUE_LIGHT;
  h = clamp(h, HUE_LIGHT, HUE_DEEP);
  var t = (h - HUE_LIGHT) / (HUE_DEEP - HUE_LIGHT);
  return 0.66 - 0.14 * t;
}

function mk() {
  var th = Math.random() * 6.2832;
  return { x: 0.25 + Math.random()*0.5, y: 0.25 + Math.random()*0.5,
           vx: Math.cos(th)*0.004, vy: Math.sin(th)*0.004,
           sp: 0.5, flash: 0, tr: [], h: pickHue() };
}

// ---------- swarm physics ----------
function update() {
  var n = agents.length, i, j, a, b, dx, dy, d2, d, f;
  var vmax = 0.002 + 0.022 * P.spd;
  var R = 0.08 + 0.42 * P.vis, Rs = R * 0.45, R2 = R*R, Rs2 = Rs*Rs;
  var kc = P.coh*0.15*vmax/R, ka = P.ali*0.15, ks = P.sep*0.6*vmax, kn = P.chaos*0.6*vmax;

  if (wanderOn) {
    tgt.vx = clamp(tgt.vx + (Math.random()-0.5)*0.0008, -0.006, 0.006);
    tgt.vy = clamp(tgt.vy + (Math.random()-0.5)*0.0008, -0.006, 0.006);
    tgt.x += tgt.vx; tgt.x -= Math.floor(tgt.x);
    tgt.y += tgt.vy;
    if (tgt.y < 0.05 || tgt.y > 0.95) { tgt.vy = -tgt.vy; tgt.y = clamp(tgt.y, 0.05, 0.95); }
  }

  for (i = 0; i < n; i++) {
    a = agents[i];
    var ax = a.x, ay = a.y;
    var cnt = 0, cx = 0, cy = 0, avx = 0, avy = 0, sx = 0, sy = 0;
    for (j = 0; j < n; j++) {
      if (j === i) continue;
      b = agents[j];
      dx = b.x - ax; if (dx > 0.5) dx -= 1; else if (dx < -0.5) dx += 1;   // time wraps
      dy = b.y - ay;
      d2 = dx*dx + dy*dy;
      if (d2 < R2) { cnt++; cx += dx; cy += dy; avx += b.vx; avy += b.vy;
        if (d2 < Rs2 && d2 > 1e-12) { d = Math.sqrt(d2); f = (1 - d/Rs)/d; sx -= dx*f; sy -= dy*f; }
      }
    }
    if (cnt) {
      a.vx += kc*(cx/cnt) + ka*(avx/cnt - a.vx);
      a.vy += kc*(cy/cnt) + ka*(avy/cnt - a.vy);
    }
    a.vx += ks*sx; a.vy += ks*sy;

    dx = tgt.x - ax; if (dx > 0.5) dx -= 1; else if (dx < -0.5) dx += 1;
    dy = tgt.y - ay;
    d = Math.sqrt(dx*dx + dy*dy);
    if (d > 1e-6) {
      f = P.att*0.15*vmax*Math.min(1, d*4)/d;
      a.vx += dx*f; a.vy += dy*f;
    }
    a.vx += kn*(Math.random()*2-1);
    a.vy += kn*(Math.random()*2-1);

    var sp = Math.sqrt(a.vx*a.vx + a.vy*a.vy), k;
    if (sp > vmax) { k = vmax/sp; a.vx *= k; a.vy *= k; }
    else if (sp < 0.25*vmax) {
      if (sp < 1e-9) { var th = Math.random()*6.2832; a.vx = Math.cos(th)*0.25*vmax; a.vy = Math.sin(th)*0.25*vmax; }
      else { k = 0.25*vmax/sp; a.vx *= k; a.vy *= k; }
    }
    a.sp = Math.min(1, Math.sqrt(a.vx*a.vx + a.vy*a.vy) / vmax);

    a.x += a.vx; a.x -= Math.floor(a.x);           // time wraps
    a.y += a.vy;                                    // pitch reflects
    if (a.y < 0) { a.y = -a.y;    a.vy = -a.vy; }
    if (a.y > 1) { a.y = 2 - a.y; a.vy = -a.vy; }
    a.y = clamp(a.y, 0, 1);

    a.tr.push(a.x, a.y);
    if (a.tr.length > TL*2) a.tr.splice(0, a.tr.length - TL*2);
    a.flash *= 0.9;
  }
}

// ---------- clock ----------
// "tick"  comes from the phasor~ wrap detector (one per step)
// "mtick" comes from the fallback metro
function tick()  { if (clockmode === 0) advance(); }
function mtick() { if (clockmode === 1) advance(); }

function advance() {
  var now = new Date().getTime();
  var restart = false;
  if (lastT) {
    var dt = now - lastT;
    // a gap much longer than the learned interval = transport was stopped and
    // restarted: begin the pattern again, and re-learn the interval from scratch
    if (lastDt > 0 && dt > 2.5 * lastDt + 60) { restart = true; lastDt = 0; }
    else lastDt = dt;
  }
  lastT = now;
  if (restart) cur = -1;
  if (!running) return;                             // stopped: no notes

  cur = (cur + 1) % nsteps;
  var hits = [], i, a, j, t;
  for (i = 0; i < agents.length; i++) {
    a = agents[i];
    if (Math.floor(a.x * nsteps) === cur && Math.random() < P.dens) hits.push(a);
  }
  if (hits.length > P.poly) {                       // random subset if too many
    for (i = hits.length - 1; i > 0; i--) {
      j = Math.floor(Math.random() * (i + 1));
      t = hits[i]; hits[i] = hits[j]; hits[j] = t;
    }
    hits.length = P.poly;
  }
  hits.sort(function (p, q) { return p.y - q.y; });
  for (i = 0; i < hits.length; i++) fire(hits[i]);
}

function fire(a) {
  var idx = clamp(Math.floor(a.y * notes.length), 0, notes.length - 1);
  var lo = Math.min(velLo, velHi), hi = Math.max(velLo, velHi);
  var vel = Math.round(lo + (hi - lo) * Math.pow(a.sp, 0.7));
  a.flash = 1;
  outlet(0, "dur", Math.max(1, lenTicks));          // note length in ticks -> [translate ticks ms]
  outlet(0, "note", notes[idx], vel);
}

// ---------- visualisation (mgraphics, pixel coordinates) ----------
function paint() {
  var g = mgraphics, w = W, h = H, i, k, a, tr, m, yy, xx, r, c;
  var sz = g.size;
  if (sz && sz[0] > 0 && sz[1] > 0) { w = sz[0]; h = sz[1]; }

  g.set_source_rgba(0.05, 0.06, 0.09, 1);
  g.rectangle(0, 0, w, h);
  g.fill();

  if (cur >= 0) {
    g.set_source_rgba(1, 1, 1, 0.10);
    g.rectangle(w * cur / nsteps, 0, w / nsteps, h);
    g.fill();
  }

  g.set_line_width(1);
  var sl = SCALES[scl].length;
  for (i = 0; i < notes.length; i++) {
    yy = h * (1 - (i + 0.5) / notes.length);
    g.set_source_rgba(1, 1, 1, (i % sl === 0) ? 0.14 : 0.05);
    g.move_to(0, yy); g.line_to(w, yy); g.stroke();
  }
  for (k = 0; k <= nsteps; k++) {
    xx = w * k / nsteps;
    g.set_source_rgba(1, 1, 1, (k % 4 === 0) ? 0.22 : 0.08);
    g.move_to(xx, 0); g.line_to(xx, h); g.stroke();
  }

  for (i = 0; i < agents.length; i++) {
    a = agents[i];
    tr = a.tr; m = tr.length / 2;
    if (m < 2) continue;
    c = hsl(a.h === undefined ? HUE_LIGHT : a.h, 0.8, shade(a.h));
    g.set_source_rgba(c[0], c[1], c[2], 0.3);
    g.move_to(tr[0] * w, (1 - tr[1]) * h);
    for (k = 1; k < m; k++) {
      if (Math.abs(tr[2*k] - tr[2*k-2]) > 0.5)
        g.move_to(tr[2*k] * w, (1 - tr[2*k+1]) * h);
      else
        g.line_to(tr[2*k] * w, (1 - tr[2*k+1]) * h);
    }
    g.stroke();
  }

  r = 7;
  for (i = 0; i < agents.length; i++) {
    a = agents[i];
    if (a.flash > 0.05) {
      g.set_source_rgba(1, 1, 1, a.flash * 0.35);
      g.ellipse(a.x * w - r, (1 - a.y) * h - r, 2*r, 2*r);
      g.fill();
    }
  }

  r = agents.length > 60 ? 2 : 2.5;
  for (i = 0; i < agents.length; i++) {
    a = agents[i];
    c = hsl(a.h === undefined ? HUE_LIGHT : a.h, 0.85, clamp(shade(a.h) + 0.14 * a.sp, 0, 0.85));
    g.set_source_rgba(c[0], c[1], c[2], 1);
    g.ellipse(a.x * w - r, (1 - a.y) * h - r, 2*r, 2*r);
    g.fill();
  }

  var tx = tgt.x * w, ty = (1 - tgt.y) * h;
  c = 6;
  g.set_source_rgba(1, 0.85, 0.2, wanderOn ? 0.5 : 1);
  g.set_line_width(1.5);
  g.move_to(tx - c, ty); g.line_to(tx + c, ty);
  g.move_to(tx, ty - c); g.line_to(tx, ty + c);
  g.stroke();
}

function bang() { mgraphics.redraw(); }
function onresize(w, h) { W = w; H = h; mgraphics.redraw(); }

function onclick(x, y, but, cmd, shift) {
  if (shift) { wanderOn = 1; return; }
  target(x / W, 1 - y / H);
}
function ondrag(x, y, but, cmd, shift) { if (!shift) target(x / W, 1 - y / H); }

function frame() {
  if (running) update();
  mgraphics.redraw();
}

buildNotes();
count(N);
reset();
var task = new Task(frame, this);
task.interval = 40;
task.repeat();

function notifydeleted() { task.freepeer(); }
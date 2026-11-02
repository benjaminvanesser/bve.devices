// FreezeLab :: view (jsui + mgraphics)
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
inlets = 1;
outlets = 1;

var W = 400, H = 169;
var NV = 8, TWO_PI = Math.PI * 2;
var ACC = [0.012, 0.765, 0.835];
var H0 = 0.514;
var HUE_OFF = [0, 0.04, 0.12, -0.07, 0.22];
var MODE_NAMES = ["LOOP", "GRANULAR", "STOCHASTIC", "SMEAR", "SHIMMER", "RANDOM"];

var uiMode = 1, winMs = 500, relMs = 1500;
var inLvl = 0, hT = [], hV = [];
var parts = [], swT = -1e9;
var lastT = new Date().getTime();

function now() { return new Date().getTime(); }
function mkVoice() {
    var w = []; for (var k = 0; k < 64; k++) w.push(0.3);
    return { on:false, rel:false, mode:1, wave:w, t0:0, relT0:0, relDur:1500,
             lvl:0, tgt:0, rot:Math.random() * TWO_PI, flash:-1e9, seed:Math.random() * 1000 };
}
var V = [];
for (var q = 0; q < NV; q++) V.push(mkVoice());


// ---------- info pane ----------
var infoOpen = false, infoPage = 0;
var PAGES = [
  { t:"CONTROLS", e:[
    ["FREEZE", "Captures the last Window of input into the next free voice (up to 8). If all are busy, the oldest voice is faded out and reused."],
    ["STOP ALL", "Fades every voice out over the Fade time. Nothing cuts."],
    ["Orb click", "Click a voice orb to fade out just that voice."],
    ["Mode", "Freeze type for the next freeze. Each voice keeps the mode it was frozen with."],
    ["Auto", "Freezes automatically in tempo, 1/16 to 2 bars, while Live's transport is running."] ] },
  { t:"MODES", e:[
    ["Loop", "Two cross-faded read heads loop the whole window."],
    ["Granular", "A steady cloud of overlapping grains."],
    ["Stochastic", "Random grain length, position and direction, at constant pitch."],
    ["Smear", "Long, slightly detuned grains for pad-like drones."],
    ["Shimmer", "Grains jump up an octave or a fifth."],
    ["Random", "Picks one of the five modes at every freeze."] ] },
  { t:"CAPTURE", f:"Set when you freeze: stays with that voice.", e:[
    ["Window", "20-2000 ms. How much recent input is frozen. Max about 2.7 s at 48 kHz."],
    ["Grain", "5-1000 ms. Grain length. Not used by Loop or Smear."],
    ["Density", "1-8. Number of overlapping grains. Loop always uses 2."],
    ["Pitch", "-24 to +24 semitones. Transposes the frozen sound."] ] },
  { t:"VARIATION", f:"Spread, Reverse and Jitter are set at freeze. Drift is live.", e:[
    ["Spread", "Random stereo placement of each grain."],
    ["Reverse", "Chance that a grain plays backwards."],
    ["Jitter", "Randomness. Stochastic: varies grain length. Granular, Smear, Shimmer: tiny detune. Loop: no effect."],
    ["Drift", "Slow tape-like wobble of the read position. Works live on sounding voices."] ] },
  { t:"ENVELOPE & TONE", f:"Attack and Life are set at freeze. Fade and Tone are live.", e:[
    ["Attack", "1-2000 ms. Fade-in time of a new voice."],
    ["Fade", "5-20000 ms. Fade-out time for every stop: Stop All, orb click, Life."],
    ["Life", "0-30 s. Voice fades out by itself after this time. 0 = holds until you stop it."],
    ["Tone", "Low-pass filter on the frozen sound. Fully open at 100 %."] ] }
];
function info() { infoOpen = arguments.length ? (arguments[0] != 0) : !infoOpen; mgraphics.redraw(); }
function infopage(n) { var L = PAGES.length; infoPage = (((Math.round(n) - 1) % L) + L) % L; mgraphics.redraw(); }
function flip(d) { infoPage = (infoPage + d + PAGES.length) % PAGES.length; mgraphics.redraw(); }

function infoEntry(head, body, y, left, right) {
    var g = mgraphics, LH = 10.5;
    g.set_font_size(8.5);
    var hw = g.text_measure(head)[0];
    rgba(ACC, 1); g.move_to(left, y); g.show_text(head);
    var x1 = left + hw + 6, ind = left + 8;
    var words = body.split(" "), line = "", first = true;
    rgba([0.78, 0.9, 0.93], 0.85);
    for (var i = 0; i < words.length; i++) {
        var test = line ? line + " " + words[i] : words[i];
        var lim = (first ? right - x1 : right - ind);
        if (line && g.text_measure(test)[0] > lim) {
            g.move_to(first ? x1 : ind, y); g.show_text(line);
            y += LH; first = false; line = words[i];
        } else line = test;
    }
    g.move_to(first ? x1 : ind, y); g.show_text(line);
    return y + LH + 3;
}

function drawInfo() {
    var g = mgraphics, pg = PAGES[infoPage];
    g.set_source_rgba(0.027, 0.035, 0.043, 0.98); g.rectangle(0, 0, W, H); g.fill();
    rgba(ACC, 0.35); g.set_line_width(1); g.rectangle(0.5, 0.5, W - 1, H - 1); g.stroke();
    // header: back arrow, title, counter, forward arrow, close
    rgba(ACC, 0.95);
    g.move_to(17, 5); g.line_to(17, 17); g.line_to(8, 11); g.close_path(); g.fill();
    g.select_font_face("Arial"); g.set_font_size(10); rgba(ACC, 1); g.move_to(30, 15); g.show_text(pg.t);
    var cs = (infoPage + 1) + " / " + PAGES.length;
    g.set_font_size(9); rgba(ACC, 0.6); var m = g.text_measure(cs); g.move_to(W - 55 - m[0], 15); g.show_text(cs);
    rgba(ACC, 0.95);
    g.move_to(W - 47, 5); g.line_to(W - 47, 17); g.line_to(W - 38, 11); g.close_path(); g.fill();
    rgba(ACC, 0.8); g.set_line_width(1.5);
    g.move_to(W - 18, 7); g.line_to(W - 10, 15); g.move_to(W - 10, 7); g.line_to(W - 18, 15); g.stroke();
    rgba(ACC, 0.25); g.set_line_width(1); g.move_to(0, 23); g.line_to(W, 23); g.stroke();
    // body
    var y = 36;
    for (var k = 0; k < pg.e.length; k++) y = infoEntry(pg.e[k][0], pg.e[k][1], y, 10, W - 10);
    if (pg.f) { g.set_font_size(8); rgba(ACC, 0.45); g.move_to(10, H - 6); g.show_text(pg.f); }
}

// ---------- messages from brain ----------
function mode(m) { uiMode = m; }
function param(n, v) { if (n === "p_win") winMs = v; else if (n === "p_rel") relMs = v; }
function inlevel(x) {
    inLvl += (x - inLvl) * 0.5;
    var t = now(); hT.push(t); hV.push(x);
    while (hT.length && t - hT[0] > 2800) { hT.shift(); hV.shift(); }
}
function wave() {
    var a = arrayfromargs(arguments), i = a[0];
    if (i < 0 || i >= NV) return;
    for (var k = 0; k < 64; k++) V[i].wave[k] = (a[k + 1] === undefined) ? 0.3 : a[k + 1];
}
function trigger(i, m, win, rel, life) {
    var v = V[i], t = now();
    v.on = true; v.rel = false; v.mode = m; v.t0 = t; v.flash = t; v.relDur = rel; v.tgt = 0.05;
    var g = geom(), cx = g.x0 + i * g.sp, col = modeCol(m);
    for (var k = 0; k < 18; k++) {
        var a = Math.random() * TWO_PI, s = 40 + Math.random() * 90;
        parts.push({ x:cx, y:g.oy, vx:Math.cos(a) * s, vy:Math.sin(a) * s,
                     life:0.5 + Math.random() * 0.7, ttl:1.2, col:col });
    }
}
function release(i, dur) {
    var v = V[i];
    if (v.on && !v.rel) { v.rel = true; v.relT0 = now(); v.relDur = dur; }
}
function amp(i, val) {
    var v = V[i], a = Math.abs(val), age = now() - v.t0;
    v.tgt = a;
    if (a === 0) { if (age > 80) { v.on = false; v.rel = false; v.tgt = 0; } }
    else { v.on = true; if (val < 0 && !v.rel && age > 60) { v.rel = true; v.relT0 = now(); v.relDur = relMs; } }
}
function stopall() { swT = now(); }
function bang() { mgraphics.redraw(); }
function onresize(w, h) { W = w; H = h; mgraphics.redraw(); }

// click: info pane navigation when open, otherwise click an orb to fade that voice out
function onclick(x, y) {
    if (infoOpen) {
        if (y < 24) {
            if (x < 28) flip(-1);
            else if (x >= W - 54 && x < W - 30) flip(1);
            else if (x >= W - 28) infoOpen = false;
        }
        mgraphics.redraw();
        return;
    }
    var g = geom();
    for (var i = 0; i < NV; i++) {
        var cx = g.x0 + i * g.sp;
        if (Math.abs(x - cx) < g.sp * 0.5 && Math.abs(y - g.oy) < g.sp * 0.6) { outlet(0, "stopv", i); return; }
    }
}

// ---------- helpers ----------
function geom() {
    var sp = (W - 20) / NV;
    return { sp:sp, x0:10 + sp / 2, oy:H * 0.62, R:Math.min(sp * 0.42, 22) };
}
function hsl(h, s, l) {
    h = ((h % 1) + 1) % 1;
    var q = l < 0.5 ? l * (1 + s) : l + s - l * s, p = 2 * l - q;
    function f(t) { t = ((t % 1) + 1) % 1;
        if (t < 1/6) return p + (q - p) * 6 * t; if (t < 0.5) return q;
        if (t < 2/3) return p + (q - p) * (2/3 - t) * 6; return p; }
    return [f(h + 1/3), f(h), f(h - 1/3)];
}
function modeCol(m) { if (m === 0) return ACC; return hsl(H0 + HUE_OFF[m], 0.88, 0.55); }
function hash(n) { var s = Math.sin(n * 12.9898) * 43758.5453; return s - Math.floor(s); }
function rgba(c, a) { mgraphics.set_source_rgba(c[0], c[1], c[2], a); }
function circ(cx, cy, r) { mgraphics.ellipse(cx - r, cy - r, 2 * r, 2 * r); }

// ---------- drawing ----------
function paint() {
    var g = mgraphics, t = now(), k, i;
    var dt = Math.min(0.1, (t - lastT) / 1000); lastT = t;
    var ge = geom(), R0 = ge.R;
    var il = Math.min(1, Math.sqrt(Math.max(inLvl, 0)));

    // background + breathing glow
    g.set_source_rgba(0.031, 0.039, 0.047, 1); g.rectangle(0, 0, W, H); g.fill();
    for (k = 0; k < 5; k++) { rgba(ACC, 0.010 + il * 0.018); circ(W * 0.5, ge.oy, H * 0.22 + k * H * 0.10); g.fill(); }
    // faint grid + sweeping scanner
    rgba(ACC, 0.035); g.set_line_width(1);
    for (k = 1; k < 8; k++) { g.move_to(0, H * k / 8); g.line_to(W, H * k / 8); }
    g.stroke();
    var sx = ((t / 14) % (W + 60)) - 30;
    rgba(ACC, 0.05); g.rectangle(sx, 0, 2, H); g.fill();
    rgba(ACC, 0.02); g.rectangle(sx - 14, 0, 14, H); g.fill();

    // ----- input history band, capture window highlighted -----
    var bx0 = 8, bx1 = W - 8, bw = bx1 - bx0, by = 32, span = 2600;
    var cw = Math.min(winMs, span) / span * bw;
    rgba(ACC, 0.07); g.rectangle(bx1 - cw, by - 24, cw, 48); g.fill();
    rgba(ACC, 0.55); g.set_line_width(1);
    g.move_to(bx1 - cw, by - 24); g.line_to(bx1 - cw, by + 24); g.stroke();
    var barW = Math.max(1.5, bw / (span / 16) - 0.4);
    for (var pass = 0; pass < 2; pass++) {
        for (k = 0; k < hT.length; k++) {
            var x = bx1 - (t - hT[k]) / span * bw;
            if (x < bx0 || x > bx1) continue;
            var inside = x >= bx1 - cw;
            if ((pass === 1) !== inside) continue;
            var h = Math.min(1, Math.sqrt(hV[k]) * 1.25) * 22 + 0.5;
            g.rectangle(x - barW / 2, by - h, barW, h * 2);
        }
        rgba(ACC, pass === 1 ? 0.95 : 0.28); g.fill();
    }
    g.select_font_face("Arial"); g.set_font_size(8);
    rgba(ACC, 0.55); g.move_to(bx1 - cw + 4, by - 15); g.show_text("CAPTURE " + Math.round(winMs) + " ms");

    // ----- voice orbs -----
    var nOn = 0;
    for (i = 0; i < NV; i++) {
        var v = V[i], cx = ge.x0 + i * ge.sp, cy = ge.oy;
        v.lvl += (v.tgt - v.lvl) * 0.35;
        if (!v.on) {
            rgba(ACC, 0.16); circ(cx, cy, R0 * 0.72); g.set_line_width(1); g.stroke();
            rgba(ACC, 0.30); g.set_font_size(9); g.move_to(cx - 2.5, cy + 3); g.show_text("" + (i + 1));
            continue;
        }
        nOn++;
        var col = modeCol(v.mode), age = (t - v.t0) / 1000;
        var rp = v.rel ? Math.min(1, (t - v.relT0) / Math.max(1, v.relDur)) : 0;
        var vis = 1 - rp; vis = vis * vis * (3 - 2 * vis);
        var pulse = Math.min(1, v.lvl * 3.5);
        var R = R0 * (0.80 + 0.30 * pulse) * (0.72 + 0.28 * vis);
        var spd = [0.9, 0.5, 1.7, 0.15, 0.8][v.mode] || 0.5;
        v.rot += dt * spd * (v.mode === 2 ? (0.4 + Math.random()) : 1);

        // glow halo
        for (k = 3; k >= 1; k--) { rgba(col, (0.035 + 0.05 * pulse) * vis); circ(cx, cy, R + k * 5); g.fill(); }
        // trigger flash ring
        var fa = (t - v.flash) / 1000;
        if (fa < 0.6) { rgba(col, (1 - fa / 0.6) * 0.7); g.set_line_width(2); circ(cx, cy, R * (1 + fa * 2.6)); g.stroke(); }

        // polar waveform of the frozen audio
        var N = 72;
        for (var j = 0; j <= N; j++) {
            var u = j / N, s = u < 0.5 ? u * 2 : (1 - u) * 2, fi = s * 63;
            var a0 = Math.floor(fi), fr = fi - a0, a1 = Math.min(63, a0 + 1);
            var wv = v.wave[a0] * (1 - fr) + v.wave[a1] * fr;
            var rad = R * (0.42 + 0.78 * wv * (0.45 + pulse));
            if (v.mode === 2) rad *= 1 + (Math.random() - 0.5) * 0.30;
            if (v.mode === 3) rad *= 1 + 0.12 * Math.sin(t / 400 + u * 12 + v.seed);
            var ang = v.rot + u * TWO_PI, px = cx + Math.cos(ang) * rad, py = cy + Math.sin(ang) * rad;
            if (j === 0) g.move_to(px, py); else g.line_to(px, py);
        }
        g.close_path();
        rgba(col, 0.16 * vis); g.fill_preserve();
        rgba(col, 0.13 * vis); g.set_line_width(5); g.stroke_preserve();
        rgba(col, 0.95 * vis); g.set_line_width(1.5); g.stroke();
        rgba([1, 1, 1], 0.5 * pulse * vis); circ(cx, cy, 1.5 + 2 * pulse); g.fill();

        // mode-specific sparkle
        if (v.mode === 1 || v.mode === 2) {                    // grains hopping around the rim
            var step = Math.floor(t / (v.mode === 1 ? 120 : 70));
            for (k = 0; k < 5; k++) {
                var ha = hash(step * 1.7 + k * 7.3 + v.seed) * TWO_PI;
                rgba(col, 0.9 * vis); circ(cx + Math.cos(ha) * R * 1.12, cy + Math.sin(ha) * R * 1.12, 1.4); g.fill();
            }
        } else if (v.mode === 3) {                             // slow expanding smear rings
            for (k = 0; k < 2; k++) {
                var ph = ((t / 2400) + k * 0.5) % 1;
                rgba(col, (1 - ph) * 0.35 * vis); g.set_line_width(1); circ(cx, cy, R * (1 + ph * 0.7)); g.stroke();
            }
        } else if (v.mode === 4) {                             // rising shimmer sparks
            for (k = 0; k < 4; k++) {
                var ph2 = ((t / 1500) + hash(k + v.seed)) % 1;
                var sx2 = cx + (hash(k * 3.1 + v.seed) - 0.5) * R * 2, sy2 = cy + R * 0.8 - ph2 * R * 2.4;
                rgba([1, 1, 1], Math.sin(ph2 * Math.PI) * 0.8 * vis);
                g.rectangle(sx2 - 0.5, sy2 - 2.5, 1, 5); g.rectangle(sx2 - 2.5, sy2 - 0.5, 5, 1); g.fill();
            }
        }
        // fade-out countdown ring
        if (v.rel) {
            rgba(col, 0.9); g.set_line_width(2);
            g.arc(cx, cy, R0 + 7, -Math.PI / 2, -Math.PI / 2 + TWO_PI * (1 - rp)); g.stroke();
        }
    }

    // ----- particles -----
    for (k = parts.length - 1; k >= 0; k--) {
        var p = parts[k];
        p.life -= dt; if (p.life <= 0) { parts.splice(k, 1); continue; }
        p.x += p.vx * dt; p.y += p.vy * dt; p.vx *= 0.96; p.vy *= 0.96;
        rgba(p.col, Math.min(1, p.life / 0.5) * 0.8); circ(p.x, p.y, 1.3); g.fill();
    }
    // ----- stop-all shockwave -----
    var sw = (t - swT) / 1000;
    if (sw < 0.8) {
        rgba(ACC, (1 - sw / 0.8) * 0.6); g.set_line_width(3);
        circ(W / 2, ge.oy, sw * W * 0.9); g.stroke();
    }

    // ----- status line -----
    g.set_font_size(9);
    rgba(ACC, 0.45); g.move_to(10, H - 6); g.show_text("MODE");
    rgba(ACC, 0.95); g.move_to(40, H - 6); g.show_text(MODE_NAMES[uiMode] || "");
    var s2 = "VOICES " + nOn + "/" + NV, m2 = g.text_measure(s2);
    rgba(ACC, 0.7); g.move_to(W - 10 - m2[0], H - 6); g.show_text(s2);

    if (infoOpen) drawInfo();
}

var tk = new Task(function () { mgraphics.redraw(); }, this);
tk.interval = 33;
tk.repeat();
function notifydeleted() { tk.cancel(); }

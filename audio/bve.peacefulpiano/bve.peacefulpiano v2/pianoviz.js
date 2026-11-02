/*
  pianoviz.js  -  animation for the Peaceful Piano device  ([jsui pianoviz.js])

  Melody notes  -> ripples on the pond (position = pitch)
  Chord notes   -> soft lanterns that drift upward
  Bass notes    -> slow, deep pulses
  Key / mode tint the sky, complexity adds shimmer + extra rings,
  density adds fireflies + stars, bottom dots show the bar & current step.
*/

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
inlets = 1;
outlets = 0;

var W = 230, H = 169;
var SCALE_NAMES = ["Major (Ionian)", "Dorian", "Phrygian", "Lydian", "Mixolydian", "Minor (Aeolian)",
    "Locrian", "Harmonic Minor", "Melodic Minor", "Major Pentatonic", "Minor Pentatonic"];
var KEY_NAMES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
var DARK_MODES = { 1: 1, 2: 1, 5: 1, 6: 1, 7: 1, 8: 1, 10: 1 };

var keyIdx = 0, scaleIdx = 0, num = 4, den = 4, styleIdx = 0;
var STYLE_NAMES = ["Free", "Cool Modal", "Felt Ostinato", "Glacial Drift", "Solemn Hymn", "Folk Waltz", "Rolling Loops", "Impressionist", "Romantic Nocturne", "Minimal Pulse", "Elegiac Drone", "Sweet Ballad", "Open Pentatonic", "Soft Lullaby", "Music Box", "Wry Staccato", "Pendulum Repeat", "Brooding Low", "Jazz Ballad"];
var comp = 0.35, dens = 0.4;
var S = 16, U = 4, curStep = -1;
var chordLabel = "";
var pedalOn = 0, pedalGlow = 0;
var T = 0, flash = 0, bassPulse = 0, stepFlash = 0;

var ripples = [], orbs = [], flies = [], stars = [];
var hue = 0.6, warm = 0.5;       // smoothed palette
var hueT = 0.6, warmT = 0.5;

var i;
for (i = 0; i < 70; i++) stars.push({ x: Math.random(), y: Math.random() * 0.62, p: Math.random() * 6.28, s: 0.4 + Math.random() });
for (i = 0; i < 18; i++) flies.push(newFly());

function newFly() {
    return { x: Math.random(), y: 0.35 + Math.random() * 0.5, vx: (Math.random() - 0.5) * 0.02, vy: (Math.random() - 0.5) * 0.01, p: Math.random() * 6.28 };
}

// ------------------------------------------------------------ messages
function note(kind, pitch, vel, dur) {
    var v = vel / 127;
    if (kind === 0) {                                   // melody
        var x = (pitch - 60) / 30; x = Math.max(0.04, Math.min(0.96, x));
        var rings = 1 + Math.round(comp * 2);
        for (var k = 0; k < rings; k++)
            ripples.push({ x: x, r: 2 - k * 7, max: 26 + v * 70 + k * 12, life: 1, h: (pitch % 12) / 12, w: 1.4 + v * 1.6, delay: k * 0.15 });
        if (Math.random() < 0.5 + comp * 0.4)
            orbs.push({ x: x, y: 0.7, vy: 0.05 + v * 0.05, r: 1.5 + v * 2, life: 1, h: 0.55, kind: 0, sway: Math.random() * 6.28 });
    } else if (kind === 1) {                            // chord
        var cx = (pitch - 40) / 44; cx = Math.max(0.05, Math.min(0.95, cx));
        orbs.push({ x: cx, y: 0.72 + Math.random() * 0.08, vy: 0.015 + v * 0.02, r: 4 + v * 7, life: 1, h: 0.08 + 0.1 * warm, kind: 1, sway: Math.random() * 6.28 });
    } else {                                            // bass
        bassPulse = Math.min(1.4, bassPulse + 0.6 + v * 0.6);
        ripples.push({ x: 0.5, r: 4, max: 150 + v * 80, life: 1, h: 0.62, w: 3, delay: 0, big: 1 });
    }
    if (ripples.length > 90) ripples.splice(0, ripples.length - 90);
    if (orbs.length > 90) orbs.splice(0, orbs.length - 90);
}

function step(n) { curStep = n; stepFlash = 1; }
function bar(s, u) { S = s; U = u; }
function chord(name) { chordLabel = name; flash = 1; }
function clear() { ripples = []; orbs = []; curStep = -1; chordLabel = ""; pedalOn = 0; }
function pedal(on) {                                  // pedal lift damps the lanterns, pedal down lets them glow
    pedalOn = on ? 1 : 0;
    if (!on) for (var k = 0; k < orbs.length; k++) orbs[k].life *= 0.55;
}
function params(c, d) { comp = c; dens = d; }
function info(k, s, n, d, st) {
    keyIdx = k; scaleIdx = s; num = n; den = d; styleIdx = st || 0;
    hueT = 0.52 + ((k * 7) % 12) / 12 * 0.42;           // circle-of-fifths walk around blue/violet/rose
    warmT = DARK_MODES[s] ? 0.15 : 0.85;
}
function bang() { mgraphics.redraw(); }
function onresize(w, h) { W = w; H = h; mgraphics.redraw(); }

// ------------------------------------------------------------ helpers
function hsv(h, s, v) {
    h = h - Math.floor(h);
    var k = Math.floor(h * 6), f = h * 6 - k, p = v * (1 - s), q = v * (1 - f * s), t = v * (1 - (1 - f) * s);
    switch (k % 6) {
        case 0: return [v, t, p]; case 1: return [q, v, p]; case 2: return [p, v, t];
        case 3: return [p, q, v]; case 4: return [t, p, v]; default: return [v, p, q];
    }
}
function glow(x, y, r, c, a) {
    for (var g = 4; g >= 0; g--) {
        mgraphics.set_source_rgba(c[0], c[1], c[2], a * (0.1 + 0.16 * (4 - g) / 4));
        mgraphics.arc(x, y, r * (1 + g * 0.8), 0, 6.2832);
        mgraphics.fill();
    }
}

// ------------------------------------------------------------ animation clock
function update() {
    var dt = 0.04;
    T += dt;
    hue += (hueT - hue) * 0.05; warm += (warmT - warm) * 0.05;
    pedalGlow += ((pedalOn ? 1 : 0) - pedalGlow) * 0.12;
    flash *= 0.96; bassPulse *= 0.955; stepFlash *= 0.85;
    var i;
    for (i = ripples.length - 1; i >= 0; i--) {
        var r = ripples[i];
        if (r.delay > 0) { r.delay -= dt; continue; }
        r.r += (r.big ? 38 : 30) * dt * (0.5 + r.life);
        r.life -= (r.big ? 0.4 : 0.55) * dt;
        if (r.life <= 0) ripples.splice(i, 1);
    }
    for (i = orbs.length - 1; i >= 0; i--) {
        var o = orbs[i];
        o.y -= o.vy * dt * (1 + comp * 0.4);
        o.sway += dt * 1.1;
        o.life -= (o.kind === 1 ? 0.2 : 0.4) * dt;
        if (o.life <= 0 || o.y < -0.05) orbs.splice(i, 1);
    }
    var nf = Math.round(4 + dens * 14);
    for (i = 0; i < flies.length; i++) {
        var f = flies[i];
        f.p += dt * (0.8 + comp);
        f.x += f.vx * dt + Math.sin(f.p) * 0.0008;
        f.y += f.vy * dt + Math.cos(f.p * 0.7) * 0.0006;
        if (f.x < 0 || f.x > 1) f.vx = -f.vx;
        if (f.y < 0.25 || f.y > 0.95) f.vy = -f.vy;
        f.on = (i < nf);
    }
}

var anim = new Task(function () { update(); mgraphics.redraw(); }, this);
anim.interval = 40;
anim.repeat();

// ------------------------------------------------------------ drawing
function paint() {
    try { var sz = mgraphics.size; if (sz && sz[0] > 10) { W = sz[0]; H = sz[1]; } } catch (e) { }
    var w = W, h = H, i, n;
    var mg = mgraphics;
    var dark = [0.04, 0.05, 0.12];
    // sky gradient made from bands
    var top = hsv(hue, 0.65, 0.13 + 0.05 * warm), bot = hsv(hue + 0.05 - 0.08 * warm, 0.5, 0.34 + 0.12 * warm + 0.06 * bassPulse);
    var yw = h * 0.70, bands = 24;
    for (i = 0; i < bands; i++) {
        var f = i / (bands - 1);
        mg.set_source_rgba(top[0] + (bot[0] - top[0]) * f, top[1] + (bot[1] - top[1]) * f, top[2] + (bot[2] - top[2]) * f, 1);
        mg.rectangle(0, (yw / bands) * i, w, yw / bands + 1);
        mg.fill();
    }
    // stars
    var ns = Math.round(26 + dens * 44);
    for (i = 0; i < ns; i++) {
        var s = stars[i];
        var tw = 0.45 + 0.55 * Math.sin(T * (0.8 + s.s * (1 + comp * 2)) + s.p);
        mg.set_source_rgba(1, 0.97, 0.9, 0.12 + 0.55 * tw * s.s * 0.6);
        mg.arc(s.x * w, s.y * h, 0.5 + s.s * 0.7, 0, 6.2832);
        mg.fill();
    }
    // moon
    var moonC = hsv(hue - 0.02, 0.1, 1);
    glow(w * 0.82, h * 0.2, 9, moonC, 0.9 + 0.1 * flash);
    mg.set_source_rgba(moonC[0], moonC[1], moonC[2], 0.95);
    mg.arc(w * 0.82, h * 0.2, 8, 0, 6.2832);
    mg.fill();

    // water
    var wt = hsv(hue + 0.03, 0.7, 0.10), wb = hsv(hue + 0.06, 0.6, 0.20 + 0.1 * bassPulse);
    for (i = 0; i < 10; i++) {
        var q = i / 9;
        mg.set_source_rgba(wt[0] + (wb[0] - wt[0]) * q, wt[1] + (wb[1] - wt[1]) * q, wt[2] + (wb[2] - wt[2]) * q, 1);
        mg.rectangle(0, yw + (h - yw) / 10 * i, w, (h - yw) / 10 + 1);
        mg.fill();
    }
    // moon reflection / shimmer lines
    for (i = 0; i < 7; i++) {
        var yy = yw + 4 + i * ((h - yw - 14) / 7);
        var wid = (10 + i * 4) * (1 + 0.5 * Math.sin(T * 1.3 + i)) * (1 + comp);
        mg.set_source_rgba(moonC[0], moonC[1], moonC[2], 0.10 + 0.05 * Math.sin(T + i * 1.7));
        mg.rectangle(w * 0.82 - wid / 2 + Math.sin(T * 0.9 + i) * 3, yy, wid, 1.2);
        mg.fill();
    }
    // bass glow from the depths
    if (bassPulse > 0.02) {
        var bc = hsv(hue + 0.08, 0.7, 0.9);
        mg.save();
        mg.translate(w * 0.5, h * 0.9);
        mg.scale(1, 0.28);
        for (i = 3; i >= 0; i--) {
            mg.set_source_rgba(bc[0], bc[1], bc[2], 0.05 * bassPulse * (4 - i));
            mg.arc(0, 0, w * (0.18 + 0.12 * i), 0, 6.2832);
            mg.fill();
        }
        mg.restore();
    }

    // ripples (ellipses on the water surface)
    mg.set_line_width(1.2);
    for (i = 0; i < ripples.length; i++) {
        var rp = ripples[i];
        if (rp.delay > 0) continue;
        var rc = rp.big ? hsv(hue + 0.08, 0.6, 0.95) : hsv(rp.h * 0.25 + hue, 0.35, 1);
        var cy = rp.big ? h * 0.84 : yw + 6 + (rp.x * 17 % 13);
        mg.set_source_rgba(rc[0], rc[1], rc[2], Math.max(0, rp.life) * (rp.big ? 0.35 : 0.8));
        mg.set_line_width(rp.w);
        mg.save();
        mg.translate(rp.x * w, cy);
        mg.scale(1, rp.big ? 0.22 : 0.3);
        mg.arc(0, 0, Math.max(0.5, rp.r), 0, 6.2832);
        mg.restore();
        mg.stroke();
        if (!rp.big && rp.r < 10) {                      // tiny splash glow
            glow(rp.x * w, cy, 2.5, rc, rp.life * 0.8);
        }
    }

    // orbs / lanterns
    for (i = 0; i < orbs.length; i++) {
        var ob = orbs[i];
        var ox = ob.x * w + Math.sin(ob.sway) * (ob.kind === 1 ? 7 : 3);
        var oy = ob.y * h;
        var oc = ob.kind === 1 ? hsv(ob.h + (1 - warm) * 0.55, 0.45, 1) : hsv(0.55 + hue * 0.2, 0.25, 1);
        glow(ox, oy, ob.r, oc, Math.max(0, ob.life) * (ob.kind === 1 ? 0.75 : 0.9));
        mg.set_source_rgba(1, 1, 1, Math.max(0, ob.life) * 0.7);
        mg.arc(ox, oy, ob.r * 0.35, 0, 6.2832);
        mg.fill();
    }

    // fireflies
    for (i = 0; i < flies.length; i++) {
        var fl = flies[i];
        if (!fl.on) continue;
        var fa = 0.25 + 0.5 * Math.max(0, Math.sin(fl.p * 1.7));
        var fc = hsv(0.14, 0.5, 1);
        glow(fl.x * w, fl.y * h * 0.9, 1.4, fc, fa);
    }

    // step / bar dots
    var m = 10, sw = (w - 2 * m), n2 = Math.max(1, S - 1), yb = h - 7;
    var rad = S > 48 ? 0.8 : (S > 24 ? 1.2 : 1.8);
    for (i = 0; i < S; i++) {
        var dx = m + (S === 1 ? sw / 2 : (sw * i / n2));
        var beat = (i % U === 0);
        var cur = (i === curStep);
        mg.set_source_rgba(0.9, 0.95, 1, cur ? 0.95 : (beat ? 0.38 : 0.16));
        mg.arc(dx, yb, rad * (beat ? 1.5 : 1) + (cur ? 1.2 + stepFlash : 0), 0, 6.2832);
        mg.fill();
    }

    // pedal indicator (bottom right)
    mg.set_source_rgba(0.9, 0.95, 1, 0.12 + 0.55 * pedalGlow);
    mg.rectangle(w - 26, h - 15, 16, 5);
    mg.fill();
    mg.set_font_size(7);
    mg.set_source_rgba(0.9, 0.95, 1, 0.45);
    mg.move_to(w - 44, h - 10);
    mg.show_text("ped");

    // text
    mg.select_font_face("Arial");
    mg.set_font_size(18);
    mg.set_source_rgba(1, 1, 1, 0.55 + 0.4 * flash);
    mg.move_to(10, 24);
    mg.show_text(chordLabel);
    mg.set_font_size(9);
    mg.set_source_rgba(0.85, 0.9, 1, 0.55);
    mg.move_to(10, 38);
    mg.show_text(KEY_NAMES[keyIdx] + " " + SCALE_NAMES[scaleIdx] + "  " + num + "/" + den + (styleIdx ? "  \u2022  " + STYLE_NAMES[styleIdx] : ""));
}

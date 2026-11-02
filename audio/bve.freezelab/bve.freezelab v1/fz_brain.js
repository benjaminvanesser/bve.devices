// FreezeLab :: brain (voice allocator / param router)
// outlet 0 -> gen~ ,  outlet 1 -> fz_view (jsui)
inlets = 1;
outlets = 2;

var NV = 8;
var rr = 0;
var uiMode = 1;
var lastFrz = 0;
var P = { p_win:500, p_gsize:120, p_dens:4, p_pitch:0, p_spread:70, p_rev:20, p_jit:35,
          p_drift:20, p_att:30, p_rel:1500, p_life:0, p_tone:100, p_dry:100, p_wet:80 };
// UI units -> gen~ units
var conv = { p_spread:0.01, p_rev:0.01, p_jit:0.01, p_drift:0.01, p_tone:0.01, p_dry:0.01, p_wet:0.01 };

var V = [];
for (var i = 0; i < NV; i++) V.push({ active:false, releasing:false, t:0, goN:0, offN:0, mode:0 });

// input level history (for capturing the "shape" of what was frozen)
var hT = [], hV = [];
var HIST_MS = 2600;

function now() { return new Date().getTime(); }

function anything() {
    var n = messagename;
    if (n.indexOf("p_") !== 0) return;
    var v = arguments[0];
    if (typeof v !== "number") return;
    P[n] = v;
    if (n === "p_mode") {
        uiMode = Math.round(v);
        if (uiMode < 5) outlet(0, "p_mode", uiMode);
        outlet(1, "mode", uiMode);
        return;
    }
    var k = (conv[n] !== undefined) ? conv[n] : 1;
    outlet(0, n, v * k);
    outlet(1, "param", n, v);
}

function inlevel(x) {
    var t = now();
    hT.push(t); hV.push(x);
    while (hT.length && t - hT[0] > HIST_MS) { hT.shift(); hV.shift(); }
    outlet(1, "inlevel", x);
}

function capture(winMs) {
    var N = 64, out = [], k, t0 = now() - winMs;
    for (k = 0; k < N; k++) out.push(0);
    for (k = 0; k < hT.length; k++) {
        if (hT[k] >= t0) {
            var b = Math.min(N - 1, Math.floor((hT[k] - t0) / winMs * N));
            if (hV[k] > out[b]) out[b] = hV[k];
        }
    }
    var m = 0;
    for (k = 0; k < N; k++) if (out[k] > m) m = out[k];
    if (m < 0.002) {
        for (k = 0; k < N; k++) out[k] = 0.25 + 0.1 * Math.sin(k * 0.7);
        return out;
    }
    var prev = 0;
    for (k = 0; k < N; k++) { if (out[k] === 0) out[k] = prev; else prev = out[k]; }
    for (k = N - 1; k >= 0; k--) { if (out[k] === 0) out[k] = prev; else prev = out[k]; }
    for (k = 0; k < N; k++) out[k] = Math.pow(out[k] / m, 0.7);
    return out;
}

function pick() {
    var i, k;
    for (k = 0; k < NV; k++) {
        i = (rr + k) % NV;
        if (!V[i].active) { rr = (i + 1) % NV; return i; }
    }
    var best = -1, bt = 1e18;
    for (i = 0; i < NV; i++) if (V[i].releasing && V[i].t < bt) { bt = V[i].t; best = i; }
    if (best < 0) for (i = 0; i < NV; i++) if (V[i].t < bt) { bt = V[i].t; best = i; }
    rr = (best + 1) % NV;
    return best;
}

// freeze the next voice (bang / int>0 / metro tick)
function frz() {
    if (arguments.length > 0 && typeof arguments[0] === "number" && arguments[0] === 0) return;
    var tn = now();
    if (tn - lastFrz < 15) return;
    lastFrz = tn;
    var m = uiMode;
    if (m >= 5) m = Math.floor(Math.random() * 5);
    outlet(0, "p_mode", m);
    var i = pick();
    var v = V[i];
    v.active = true; v.releasing = false; v.t = tn; v.goN++; v.mode = m;
    var w = capture(P.p_win);
    outlet(1, "trigger", i, m, P.p_win, P.p_rel, P.p_life);
    outlet(1, "wave", i, w);
    outlet(0, "go" + (i + 1), v.goN);
}

function release(i) {
    var v = V[i];
    if (!v.active || v.releasing) return;
    v.releasing = true;
    v.offN++;
    outlet(0, "off" + (i + 1), v.offN);
    outlet(1, "release", i, P.p_rel);
}

function stopall() {
    for (var i = 0; i < NV; i++) release(i);
    outlet(1, "stopall");
}

// ---- stopping individual voices (all fade over the Fade time) ----
// stopv 0..7            0-based index (what clicking an orb sends)
function stopv(i) { if (i >= 0 && i < NV) release(i); }

// stopvoice 1..8 [more]  1-based, accepts several:  stopvoice 1 3 5
function stopvoice() {
    for (var k = 0; k < arguments.length; k++) {
        var n = arguments[k];
        if (typeof n === "number") stopv(Math.round(n) - 1);
    }
}

// stopoldest / stopnewest: fade the longest / most recently frozen sounding voice
function stopoldest() { stopByAge(true); }
function stopnewest() { stopByAge(false); }
function stopByAge(oldest) {
    var best = -1, bt = oldest ? 1e18 : -1;
    for (var i = 0; i < NV; i++) {
        if (!V[i].active || V[i].releasing) continue;
        if (oldest ? V[i].t < bt : V[i].t > bt) { bt = V[i].t; best = i; }
    }
    if (best >= 0) release(best);
}

// stopmode 0..4: fade every voice that was frozen with that mode
// (0 loop, 1 granular, 2 stochastic, 3 smear, 4 shimmer)
function stopmode(m) {
    for (var i = 0; i < NV; i++) if (V[i].mode === m) release(i);
}

// per-voice state from gen~:  >0 sounding, <0 fading out, 0 idle
function amp(i, val) {
    var v = V[i], a = Math.abs(val), age = now() - v.t;
    if (a === 0) {
        if (v.active && age > 100) { v.active = false; v.releasing = false; }
    } else {
        v.active = true;
        if (val < 0 && !v.releasing && age > 60) {
            v.releasing = true;
            outlet(1, "release", i, P.p_rel);
        }
    }
    outlet(1, "amp", i, val);
}
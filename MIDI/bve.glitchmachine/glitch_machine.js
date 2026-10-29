// GLITCH MACHINE - engine script (wavetable builder, beat generator, display feeder)
// outlets: 0 -> gen~ | 1 -> wave ui | 2 -> env ui | 3 -> beat ui | 4 -> lfo ui | 5 -> mod strip ui
autowatch = 0;
inlets = 1;
outlets = 6;

var NL = 10;
var DEF = {"morph": {"d": 0, "t": "v"}, "pos": {"d": 0.2, "t": "v"}, "pitch": {"d": 38, "t": "v"}, "pmod": {"d": 24, "t": "v"}, "pdec": {"d": 40, "t": "v"}, "fm": {"d": 0, "t": "v"}, "pd": {"d": 15, "t": "v"}, "wfold": {"d": 0.1, "t": "v"}, "syncamt": {"d": 0, "t": "v"}, "poly": {"d": 0, "t": "j"}, "noiseamt": {"d": 0, "t": "v"}, "cutoff": {"d": 9000, "t": "v"}, "reso": {"d": 0.2, "t": "v"}, "fenv": {"d": 0, "t": "v"}, "att": {"d": 1, "t": "v"}, "dec": {"d": 140, "t": "v"}, "sus": {"d": 0, "t": "v"}, "rel": {"d": 40, "t": "v"}, "loopon": {"d": 0, "t": "v"}, "lend": {"d": 1, "t": "v"}, "lon0": {"d": 0, "t": "v"}, "lshape0": {"d": 0, "t": "v"}, "lrate0": {"d": 0.5, "t": "v"}, "ldepth0": {"d": 0.5, "t": "v"}, "lsync0": {"d": 0, "t": "v"}, "ldiv0": {"d": 7, "t": "j"}, "ltgt0": {"d": 5, "t": "v"}, "lon1": {"d": 0, "t": "v"}, "lshape1": {"d": 1, "t": "v"}, "lrate1": {"d": 1, "t": "v"}, "ldepth1": {"d": 0.5, "t": "v"}, "lsync1": {"d": 0, "t": "v"}, "ldiv1": {"d": 7, "t": "j"}, "ltgt1": {"d": 6, "t": "v"}, "lon2": {"d": 0, "t": "v"}, "lshape2": {"d": 2, "t": "v"}, "lrate2": {"d": 2, "t": "v"}, "ldepth2": {"d": 0.5, "t": "v"}, "lsync2": {"d": 0, "t": "v"}, "ldiv2": {"d": 7, "t": "j"}, "ltgt2": {"d": 7, "t": "v"}, "lon3": {"d": 0, "t": "v"}, "lshape3": {"d": 3, "t": "v"}, "lrate3": {"d": 0.25, "t": "v"}, "ldepth3": {"d": 0.5, "t": "v"}, "lsync3": {"d": 0, "t": "v"}, "ldiv3": {"d": 7, "t": "j"}, "ltgt3": {"d": 1, "t": "v"}, "lon4": {"d": 0, "t": "v"}, "lshape4": {"d": 4, "t": "v"}, "lrate4": {"d": 4, "t": "v"}, "ldepth4": {"d": 0.5, "t": "v"}, "lsync4": {"d": 0, "t": "v"}, "ldiv4": {"d": 7, "t": "j"}, "ltgt4": {"d": 11, "t": "v"}, "lon5": {"d": 0, "t": "v"}, "lshape5": {"d": 5, "t": "v"}, "lrate5": {"d": 0.1, "t": "v"}, "ldepth5": {"d": 0.5, "t": "v"}, "lsync5": {"d": 0, "t": "v"}, "ldiv5": {"d": 7, "t": "j"}, "ltgt5": {"d": 9, "t": "v"}, "lon6": {"d": 0, "t": "v"}, "lshape6": {"d": 0, "t": "v"}, "lrate6": {"d": 8, "t": "v"}, "ldepth6": {"d": 0.5, "t": "v"}, "lsync6": {"d": 0, "t": "v"}, "ldiv6": {"d": 7, "t": "j"}, "ltgt6": {"d": 18, "t": "v"}, "lon7": {"d": 0, "t": "v"}, "lshape7": {"d": 1, "t": "v"}, "lrate7": {"d": 0.75, "t": "v"}, "ldepth7": {"d": 0.5, "t": "v"}, "lsync7": {"d": 0, "t": "v"}, "ldiv7": {"d": 7, "t": "j"}, "ltgt7": {"d": 19, "t": "v"}, "lon8": {"d": 0, "t": "v"}, "lshape8": {"d": 2, "t": "v"}, "lrate8": {"d": 3, "t": "v"}, "ldepth8": {"d": 0.5, "t": "v"}, "lsync8": {"d": 0, "t": "v"}, "ldiv8": {"d": 7, "t": "j"}, "ltgt8": {"d": 22, "t": "v"}, "lon9": {"d": 0, "t": "v"}, "lshape9": {"d": 3, "t": "v"}, "lrate9": {"d": 6, "t": "v"}, "ldepth9": {"d": 0.5, "t": "v"}, "lsync9": {"d": 0, "t": "v"}, "ldiv9": {"d": 7, "t": "j"}, "ltgt9": {"d": 10, "t": "v"}, "retrig": {"d": 1, "t": "v"}, "density": {"d": 0.55, "t": "j"}, "cx": {"d": 0.4, "t": "j"}, "ratchet": {"d": 0.3, "t": "j"}, "swing": {"d": 0, "t": "j"}, "mutate": {"d": 0.3, "t": "j"}, "gatef": {"d": 0.5, "t": "j"}, "accent": {"d": 0.5, "t": "j"}, "pjit": {"d": 0, "t": "j"}, "posjit": {"d": 0.1, "t": "j"}, "grid": {"d": 1, "t": "j"}, "bars": {"d": 1, "t": "j"}, "trip": {"d": 0, "t": "j"}, "drive": {"d": 0.3, "t": "v"}, "dtype": {"d": 0, "t": "v"}, "comp": {"d": 0.4, "t": "v"}, "mixamt": {"d": 1, "t": "v"}, "panpos": {"d": 0, "t": "v"}};
var TGT_NAMES = ["Off", "Pitch", "P.Env", "P.Decay", "FM", "Position", "Warp", "Fold", "Sync", "Wavetable", "Noise", "Cutoff", "Reso", "F.Env", "Attack", "Decay", "Sustain", "Release", "LoopEnd", "Drive", "Comp", "FX Mix", "Pan", "Density", "Complex", "Ratchet", "Swing", "Mutate", "Gate", "Accent", "P.Jit", "T.Jit"];
var SHAPE_NAMES = ["Sine", "Tri", "Saw", "Square", "Random", "Rnd Smooth"];

var P = {};
var key;
for (key in DEF) { P[key] = DEF[key].d; }

var TS = 2048, NF = 8, NP = 32;
var WT = [];
var PRESET_NAMES = ["Classic", "Digital", "Vocal", "Metal", "Glass", "Organ", "Hollow", "Comb Saw",
                    "Grit", "Sync Sweep", "PWM", "Folded", "Spectral", "Wobble", "Rectified", "Staircase",
                    "Bell", "Strings", "Reed", "Brass", "Pluck", "Noise Burst", "Hat Metal", "Sub Kick",
                    "Tri Fold", "Pulse Train", "Ring Mod", "Choir", "Tilt", "Phase Smear", "Chebyshev", "Bitwise"];
var power = 1, ready = 0, api = null, lfosel = 0;
var seed = 20260, cycle = 0, curBar = -1, pat = [], lastTick = -1;
var hitCount = 0, TPB = 192, bpm = 120, polls = 0, wasPlaying = 0, tickCount = 0;
var fillTask = null, voiceCtr = 0, playingCache = 0;

var WTSET = { morph: 1, pos: 1, pd: 1, wfold: 1, syncamt: 1 };
var ENVSET = { att: 1, dec: 1, sus: 1, rel: 1, loopon: 1, lend: 1 };
var BEATSET = { density: 1, cx: 1, ratchet: 1, swing: 1, mutate: 1, gatef: 1,
                accent: 1, pjit: 1, posjit: 1, grid: 1, bars: 1, trip: 1 };

// ---------- helpers ----------
function imul(a, b) {
    var ah = (a >>> 16) & 0xffff, al = a & 0xffff;
    var bh = (b >>> 16) & 0xffff, bl = b & 0xffff;
    return ((al * bl) + (((ah * bl + al * bh) << 16) >>> 0) | 0);
}
function h(a, b, c) {
    var x = imul(a | 0, 374761393) ^ imul(b | 0, 668265263) ^ imul(c | 0, 1274126177);
    x = imul(x ^ (x >>> 15), 2246822519 | 0);
    x = imul(x ^ (x >>> 13), 3266489917 | 0);
    x = x ^ (x >>> 16);
    return (x >>> 0) / 4294967296;
}
function clamp(v, lo, hi) { return v < lo ? lo : (v > hi ? hi : v); }
function foldf(x) {
    var m = (((x + 1) % 4) + 4) % 4;
    return m < 2 ? m - 1 : 3 - m;
}
function rnd(a, b) {
    var v = Math.sin(a * 12.9898 + b * 78.233) * 43758.5453;
    return v - Math.floor(v);
}

// ---------- wavetable presets (16 presets x 8 frames x 2048) ----------
var SINT = [];
(function () { var i; for (i = 0; i < TS; i++) { SINT.push(Math.sin(2 * Math.PI * i / TS)); } })();

function finish(out) {
    var i, m = 0, mean = 0;
    for (i = 0; i < TS; i++) { mean += out[i]; }
    mean /= TS;
    for (i = 0; i < TS; i++) { out[i] -= mean; if (Math.abs(out[i]) > m) { m = Math.abs(out[i]); } }
    if (m > 1e-9) { for (i = 0; i < TS; i++) { out[i] = out[i] / m * 0.98; } }
    return out;
}
function harm(H, fn) {
    var out = new Array(TS), i, hh, a, off;
    for (i = 0; i < TS; i++) { out[i] = 0; }
    for (hh = 1; hh <= H; hh++) {
        a = fn(hh);
        if (!a || !a[0]) { continue; }
        off = Math.round((a[1] || 0) / (2 * Math.PI) * TS);
        for (i = 0; i < TS; i++) { out[i] += a[0] * SINT[(((hh * i + off) % TS) + TS) % TS]; }
    }
    return finish(out);
}
function timed(fn) {
    var out = new Array(TS), i;
    for (i = 0; i < TS; i++) { out[i] = fn(i / TS); }
    return finish(out);
}
function pulseHarm(w) {
    return function (hh) { return [Math.sin(Math.PI * hh * w) / hh, Math.PI / 2 - Math.PI * hh * w]; };
}
function buildFrame(pr, k) {
    var t = k / 7, c1, c2, m, I, L;
    switch (pr) {
    case 0:
        if (k === 0) { return harm(1, function (hh) { return [1, 0]; }); }
        if (k === 1) { return harm(48, function (hh) { return [(hh % 2) ? ((((hh - 1) / 2) % 2) ? -1 : 1) / (hh * hh) : 0, 0]; }); }
        if (k === 2) { return harm(48, function (hh) { return [1 / hh, 0]; }); }
        if (k === 3) { return harm(48, function (hh) { return [(hh % 2) ? 1 / hh : 0, 0]; }); }
        if (k === 4) { return harm(48, pulseHarm(0.25)); }
        if (k === 5) { return harm(48, pulseHarm(0.1)); }
        if (k === 6) { return harm(48, function (hh) { return [(1 / hh) * (1 + ((hh % 2) ? 0 : 0.9)), 0]; }); }
        return harm(24, function (hh) { return [1 / Math.sqrt(hh), 0]; });
    case 1:
        return harm(40, function (hh) {
            return [Math.pow(hh, -(1.5 - k * 0.14)) * (0.25 + 0.75 * rnd(hh, k + 1)), rnd(hh * 3.1, k + 7) * 2 * Math.PI];
        });
    case 2:
        c1 = 2 + k * 0.7; c2 = 5 + k * 1.6;
        return harm(40, function (hh) {
            return [Math.exp(-Math.pow((hh - c1) / 1.5, 2)) + 0.7 * Math.exp(-Math.pow((hh - c2) / 2.5, 2)) + 0.4 / hh, 0];
        });
    case 3:
        m = [1, 2, 3, 2, 5, 3, 4, 7][k]; I = 0.4 + k * 0.8;
        return timed(function (p) {
            return Math.sin(2 * Math.PI * p + I * Math.sin(2 * Math.PI * m * p)) * (0.6 + 0.4 * Math.cos(2 * Math.PI * (m + 1) * p));
        });
    case 4:
        c1 = 3 + k * 3;
        return harm(48, function (hh) {
            return [((hh % 2) ? 1 : 0.4) * Math.exp(-Math.pow((hh - c1) / 1.3, 2)) + 0.25 / hh, 0];
        });
    case 5:
        return harm(16, function (hh) {
            var on = (hh <= 6 || hh === 8 || hh === 10 || hh === 12 || hh === 16);
            return [on ? 0.5 + 0.5 * Math.sin(k * 0.9 + hh * 1.7) : 0, 0];
        });
    case 6:
        return harm(48, function (hh) { return [(hh % 2) ? (1 / hh) * (0.5 + 0.5 * Math.cos(hh * k * 0.35)) : 0, 0]; });
    case 7:
        return harm(48, function (hh) { return [(1 / hh) * (0.55 + 0.45 * Math.cos(hh * (0.2 + k * 0.35))), 0]; });
    case 8:
        return harm(40, function (hh) { return [(1 / Math.sqrt(hh)) * (0.2 + 0.8 * rnd(hh, k + 20)), rnd(hh, k + 40) * 2 * Math.PI]; });
    case 9:
        return timed(function (p) { var s = p * (1 + k * 0.9); return (s - Math.floor(s)) * 2 - 1; });
    case 10:
        return harm(48, pulseHarm(0.5 - k * 0.06));
    case 11:
        return timed(function (p) { return foldf(Math.sin(2 * Math.PI * p) * (1 + k * 1.2)); });
    case 12:
        m = k + 1;
        return harm(48, function (hh) { return [(hh % m === 0) ? 1 / Math.pow(hh, 0.7) : 0, 0]; });
    case 13:
        return timed(function (p) {
            return Math.sin(2 * Math.PI * p + k * 0.6 * Math.sin(2 * Math.PI * p) + k * 0.25 * Math.sin(6 * Math.PI * p));
        });
    case 14:
        return timed(function (p) {
            var s = Math.sin(2 * Math.PI * p);
            return s * (1 - t) + t * (Math.abs(s) * 2 - 1) + 0.25 * Math.sin(6 * Math.PI * p) * t;
        });
    case 15:
        L = Math.max(2, Math.round(32 / (1 + k * k)));
        return timed(function (p) { return Math.floor((p * 2 - 1) * L) / L; });
    case 16:
        return harm(40, function (hh) {
            var on = (hh === 1 || hh === 2 || hh === 3 || hh === 5 || hh === 7 || hh === 9 || hh === 11 || hh === 14 || hh === 18);
            return [on ? Math.pow(0.6 + 0.4 * rnd(hh, k + 60), 1) / Math.pow(hh, 0.4 + k * 0.05) : 0, rnd(hh, 5) * 6.28];
        });
    case 17:
        return timed(function (p) {
            var d = 0.02 + k * 0.07, f1 = (p % 1), f2 = ((p + d) % 1), f3 = ((p + 2 * d) % 1);
            return (f1 + f2 + f3) * 2 / 3 - 1;
        });
    case 18:
        c1 = 3 + k * 1.2;
        return harm(48, function (hh) {
            return [(hh % 2) ? (1 / hh) * (1 + 2.5 * Math.exp(-Math.pow((hh - c1) / 2, 2))) : 0.06 / hh, 0];
        });
    case 19:
        return harm(48, function (hh) { return [hh * Math.exp(-hh / (2 + k * 1.6)), 0]; });
    case 20:
        return harm(48, function (hh) { return [1 / Math.pow(hh, 0.5 + k * 0.22), (hh % 2) ? 0 : Math.PI / 2]; });
    case 21:
        return timed(function (p) {
            var i = Math.floor(p * 64), f = p * 64 - i, a = rnd(i, 70 + k) * 2 - 1, b = rnd((i + 1) % 64, 70 + k) * 2 - 1;
            var sm = f * f * (3 - 2 * f), sm2 = (1 - k / 9) * sm;
            return a + (b - a) * (k < 4 ? sm : (f < 0.5 ? 0 : 1) * (1 - sm2) + sm2 * sm);
        });
    case 22:
        return harm(44, function (hh) { return [hh >= 14 ? (0.3 + 0.7 * rnd(hh, k + 90)) / Math.sqrt(hh - 12) : 0.02, rnd(hh, k + 3) * 6.28]; });
    case 23:
        return timed(function (p) {
            var s = Math.sin(2 * Math.PI * p);
            return s + 0.12 * k * Math.sin(4 * Math.PI * p + 0.6) + 0.04 * k * Math.sin(6 * Math.PI * p);
        });
    case 24:
        return timed(function (p) {
            var tri = 1 - 4 * Math.abs(p - 0.5);
            return foldf(tri * (1 + k * 0.9));
        });
    case 25:
        return harm(48, pulseHarm(0.5 / (1 + k * 1.3)));
    case 26:
        m = k + 1;
        return timed(function (p) { return Math.sin(2 * Math.PI * p) * Math.sin(2 * Math.PI * m * p + 0.3); });
    case 27:
        c1 = 1.2 + k * 0.3; c2 = 12 - k * 0.9;
        return harm(44, function (hh) {
            return [1.4 * Math.exp(-Math.pow((hh - c1 - 1) / 1.1, 2)) + Math.exp(-Math.pow((hh - c2) / 1.6, 2)) + 0.2 / hh, 0];
        });
    case 28:
        return harm(48, function (hh) { return [Math.pow(hh, -(0.15 + k * 0.28)), 0]; });
    case 29:
        return harm(40, function (hh) { return [1 / hh, rnd(hh, 11) * 2 * Math.PI * (k / 7)]; });
    case 30:
        return timed(function (p) { return Math.cos((k + 2) * Math.acos(Math.sin(2 * Math.PI * p) * 0.999)); });
    default:
        m = k + 1;
        return timed(function (p) {
            var a = Math.floor(p * 256), b = Math.floor(p * 256 * m) % 256;
            return ((a ^ b) & 255) / 127.5 - 1;
        });
    }
}
function buildTable() {
    var pr, k, f, i;
    WT = [];
    for (pr = 0; pr < NP; pr++) {
        for (k = 0; k < NF; k++) {
            f = buildFrame(pr, k);
            for (i = 0; i < TS; i++) { WT.push(f[i]); }
        }
    }
}
function fillBuffer() {
    try {
        var b = new Buffer("glitchwt"), off, step = TS * NF;
        for (off = 0; off < WT.length; off += step) { b.poke(1, off, WT.slice(off, off + step)); }
    } catch (e) {
        post("Glitch Machine: wavetable buffer fill failed: " + e + "\n");
    }
}
function refill() { fillBuffer(); }

// ---------- displays ----------
function morphIdx() {
    var m = clamp(E("morph", 0), 0, NP - 1), pa = Math.floor(m), pb = Math.min(NP - 1, pa + 1);
    return { pa: pa, pb: pb, mix: m - pa };
}
function frameSample(pz, ph, mi) {
    var fr = clamp(pz, 0, 1) * 7, f0 = Math.floor(fr), f1 = Math.min(7, f0 + 1), fx = fr - f0;
    var idx = ph * TS, i0 = Math.min(TS - 1, Math.floor(idx)), fi = idx - i0, i1 = (i0 + 1) % TS;
    function rd(pr, f) {
        var o = (pr * NF + f) * TS;
        return WT[o + i0] + (WT[o + i1] - WT[o + i0]) * fi;
    }
    var a = rd(mi.pa, f0) * (1 - fx) + rd(mi.pa, f1) * fx;
    var b = rd(mi.pb, f0) * (1 - fx) + rd(mi.pb, f1) * fx;
    return a * (1 - mi.mix) + b * mi.mix;
}
function r4(v) {
    if (typeof v !== "number") { return v; }
    if (!isFinite(v)) { return 0; }
    v = Math.round(v * 10000) / 10000;
    return v === 0 ? 0 : v;
}
function send(o, name, arr) {
    var i, a = [name];
    for (i = 0; i < arr.length; i++) { a.push(r4(arr[i])); }
    outlet(o, a);
}
function drawWave() {
    if (!WT.length) { return; }
    var mi = morphIdx(), k, i, fr = [], sh = [], ph, sp, sp2, x, o1, o2;
    for (k = 0; k < NF; k++) {
        for (i = 0; i < 64; i++) {
            o1 = (mi.pa * NF + k) * TS + i * 32; o2 = (mi.pb * NF + k) * TS + i * 32;
            fr.push(WT[o1] * (1 - mi.mix) + WT[o2] * mi.mix);
        }
    }
    var ePd = clamp(E("pd", 0) / 100, -1, 1), eSy = E("syncamt", 0), ePos = clamp(E("pos", 0), 0, 1), eFo = clamp(E("wfold", 0), 0, 1);
    var bb = 0.5 + 0.47 * ePd;
    for (i = 0; i < 128; i++) {
        ph = i / 128;
        sp = ph * (1 + eSy * 7); sp = sp - Math.floor(sp);
        sp2 = sp < bb ? 0.5 * sp / bb : 0.5 + 0.5 * (sp - bb) / (1 - bb);
        x = frameSample(ePos, sp2, mi);
        sh.push(foldf(x * (1 + eFo * 9)));
    }
    send(1, "frames", fr);
    send(1, "shaped", sh);
    outlet(1, "scan", r4(ePos));
    var lab = PRESET_NAMES[mi.pa];
    if (mi.mix > 0.02) { lab += " > " + PRESET_NAMES[mi.pb] + " " + Math.round(mi.mix * 100) + "%"; }
    send(1, "label", lab.split(" "));
}
function envAt(ts, a, d, s, lp, le) {
    var L = Math.max((a + d) * le, 0.0008), te = ts, x;
    if (lp) { te = ts - Math.floor(ts / L) * L; }
    if (te < a) { return te / a; }
    if (te < a + d) { x = (te - a) / d; return s + (1 - s) * (1 - x) * (1 - x); }
    return s;
}
function drawEnv() {
    var a = Math.max(P.att * 0.001, 0.0003), d = Math.max(P.dec * 0.001, 0.001);
    var s = P.sus, rl = Math.max(P.rel * 0.001, 0.001), lp = P.loopon > 0.5, le = P.lend;
    var cyc = a + d, L = Math.max(cyc * le, 0.0008);
    var gate = lp ? L * 3 : cyc * 1.5;
    var T = gate + rl, out = [], i, ts, v, lastv, r, loops = [], t;
    lastv = envAt(gate, a, d, s, lp, le);
    for (i = 0; i < 160; i++) {
        ts = T * i / 159;
        if (ts < gate) { v = envAt(ts, a, d, s, lp, le); }
        else { r = clamp(1 - (ts - gate) / rl, 0, 1); v = lastv * r * r; }
        out.push(v);
    }
    if (lp && L < cyc * 0.999) { for (t = L; t < gate; t += L) { loops.push(t / T); } }
    var ta = lp ? Math.min(a, L) : a, td = lp ? Math.min(a + d, L) : a + d;
    var va = envAt(Math.max(ta - 1e-6, 0), a, d, s, lp, le), vd = envAt(Math.max(td - 1e-6, 0), a, d, s, lp, le);
    var tsus = lp ? Math.min(L, td + (L - td) * 0.5) : (a + d + gate) / 2;
    var vs = envAt(tsus, a, d, s, lp, le);
    envInfo = { T: T, L: L, lp: lp };
    send(2, "env", out);
    send(2, "marks", [ta / T, va, td / T, vd, tsus / T, vs, 1, 0]);
    send(2, "loops", loops.length ? loops : [-1]);
}
// ---------- LFO mirror (display + beat-engine modulation) ----------
var TSPEC = [["pitch", "Pitch", "add", 24, 12, 96], ["pmod", "P.Env", "add", 48, -48, 48], ["pdec", "P.Decay", "mul", 3, 2, 1000], ["fm", "FM", "add", 1, 0, 1], ["pos", "Position", "add", 1, 0, 1], ["pd", "Warp", "add", 100, -100, 100], ["wfold", "Fold", "add", 1, 0, 1], ["syncamt", "Sync", "add", 1, 0, 1], ["morph", "Wavetable", "add", 16, 0, 31], ["noiseamt", "Noise", "add", 1, 0, 1], ["cutoff", "Cutoff", "mul", 5, 20, 20000], ["reso", "Reso", "add", 1, 0, 1], ["fenv", "F.Env", "add", 2, -1, 1], ["att", "Attack", "mul", 4, 0.1, 2000], ["dec", "Decay", "mul", 4, 2, 4000], ["sus", "Sustain", "add", 1, 0, 1], ["rel", "Release", "mul", 4, 2, 4000], ["lend", "LoopEnd", "add", 1, 0.03, 1], ["drive", "Drive", "add", 1, 0, 1], ["comp", "Comp", "add", 1, 0, 1], ["mixamt", "FX Mix", "add", 1, 0, 1], ["panpos", "Pan", "add", 2, -1, 1], ["density", "Density", "add", 1, 0, 1], ["cx", "Complex", "add", 1, 0, 1], ["ratchet", "Ratchet", "add", 1, 0, 1], ["swing", "Swing", "add", 1, 0, 1], ["mutate", "Mutate", "add", 1, 0, 1], ["gatef", "Gate", "add", 1, 0.05, 1.5], ["accent", "Accent", "add", 1, 0, 1], ["pjit", "P.Jit", "add", 24, 0, 24], ["posjit", "T.Jit", "add", 1, 0, 1]];
var CPB = [0.0625, 0.125, 0.25, 0.3333333333333333, 0.5, 0.6666666666666666, 0.75, 1, 1.3333333333333333, 1.5, 2, 2.6666666666666665, 3, 4, 6, 8, 12, 16];
var TIDX = {};
var LF = [], bcJS = 0, lastNow = 0, lastUi = 0, curTb = 0, MUT = 0.3, shapeN = -1;
var lastFire = null, envInfo = null, envShown = 1;
(function () {
    var i;
    for (i = 0; i < TSPEC.length; i++) { TIDX[TSPEC[i][0]] = i + 1; }
    for (i = 0; i < NL; i++) { LF.push({ ph: 0, n: 0 }); }
})();

function rv(i, n) {
    var x = Math.sin(n * 12.9898 + i * 78.233) * 43758.5453;
    return (x - Math.floor(x)) * 2 - 1;
}
function shapeVal(i, ph, n) {
    var s = P["lshape" + i] | 0, a, b, f;
    if (s === 0) { return Math.sin(2 * Math.PI * ph); }
    if (s === 1) { return 1 - 4 * Math.abs(ph - 0.5); }
    if (s === 2) { return ph * 2 - 1; }
    if (s === 3) { return ph < 0.5 ? 1 : -1; }
    a = rv(i, n);
    if (s === 4) { return a; }
    b = rv(i, n + 1);
    f = ph * ph * (3 - 2 * ph);
    return a + (b - a) * f;
}
function cpbOf(i) { return CPB[P["ldiv" + i] | 0] || 1; }
function lfoVal(i, dBeats) {
    var st = LF[i], x, n, ph, secs;
    if (P["lsync" + i] > 0.5) {
        x = (bcJS + dBeats) * cpbOf(i); n = Math.floor(x); ph = x - n;
    } else {
        secs = dBeats * 60 / bpm;
        x = st.ph + P["lrate" + i] * secs; n = st.n + Math.floor(x); ph = x - Math.floor(x);
    }
    return shapeVal(i, ph, n);
}
function stepLfos(dt) {
    var i, st, x, k;
    for (i = 0; i < NL; i++) {
        st = LF[i];
        if (P["lon" + i] < 0.5) { continue; }
        if (P["lsync" + i] > 0.5) {
            x = bcJS * cpbOf(i); st.n = Math.floor(x); st.ph = x - st.n;
        } else {
            st.ph += P["lrate" + i] * dt;
            if (st.ph >= 1) { k = Math.floor(st.ph); st.ph -= k; st.n += k; }
        }
    }
}
function E(key, dB) {
    var idx = TIDX[key], base = P[key], s, m = 0, i;
    if (!idx) { return base; }
    s = TSPEC[idx - 1];
    for (i = 0; i < NL; i++) {
        if (P["lon" + i] > 0.5 && (P["ltgt" + i] | 0) === idx) { m += lfoVal(i, dB) * P["ldepth" + i]; }
    }
    if (m === 0) { return base; }
    if (s[2] === "add") { return clamp(base + m * s[3], s[4], s[5]); }
    return clamp(base * Math.pow(2, m * s[3]), s[4], s[5]);
}
function Eb(key, tk) { return E(key, (tk - curTb) / 48); }
function normOf(idx, v) {
    var s = TSPEC[idx - 1];
    if (s[2] === "add") { return clamp((v - s[4]) / (s[5] - s[4]), 0, 1); }
    return clamp(Math.log(Math.max(v, s[4]) / s[4]) / Math.log(s[5] / s[4]), 0, 1);
}
function activeMods() {
    var i, idx, out = [], seen = {}, j;
    for (i = 0; i < NL; i++) {
        idx = P["ltgt" + i] | 0;
        if (idx > 0 && P["lon" + i] > 0.5) {
            if (!seen[idx]) { seen[idx] = { idx: idx, lfos: [] }; out.push(seen[idx]); }
            seen[idx].lfos.push(i + 1);
        }
    }
    return out;
}
function wtModulated() {
    var m = activeMods(), j;
    for (j = 0; j < m.length; j++) {
        var k = TSPEC[m[j].idx - 1][0];
        if (k === "morph" || k === "pos" || k === "pd" || k === "wfold" || k === "syncamt") { return true; }
    }
    return false;
}

// ---------- LFO / modulation displays ----------
function drawLfo() {
    var i, out = [], on = [], nm, st = LF[lfosel];
    shapeN = st.n;
    for (i = 0; i < 96; i++) { out.push(shapeVal(lfosel, i / 96, st.n)); }
    for (i = 0; i < NL; i++) { if (P["lon" + i] > 0.5) { on.push(i + 1); } }
    nm = TGT_NAMES[P["ltgt" + lfosel] | 0] || "Off";
    var sync = P["lsync" + lfosel] > 0.5;
    send(4, "lfo", out);
    send(4, "lfolabel", ["LFO", String(lfosel + 1), SHAPE_NAMES[P["lshape" + lfosel] | 0],
                         sync ? DIV_NAMES[P["ldiv" + lfosel] | 0].replace(/ /g, "_") : "free", "|", "ON:",
                         on.length ? on.join(",") : "-"]);
}
var DIV_NAMES = ["4 bars", "2 bars", "1 bar", "1/2D", "1/2", "1/4D", "1/2T", "1/4", "1/8D", "1/4T", "1/8", "1/16D", "1/8T", "1/16", "1/16T", "1/32", "1/32T", "1/64"];
function uiTick(now) {
    if (now - lastUi < 50) { return; }
    lastUi = now;
    var st = LF[lfosel], idx = P["ltgt" + lfosel] | 0, i, mods, arr = [], m, key, nrm1, nrm2, el, x1, x2;
    if ((P["lshape" + lfosel] | 0) >= 4 && st.n !== shapeN) { drawLfo(); }
    send(4, "lpos", [st.ph, shapeVal(lfosel, st.ph, st.n) * (P["lon" + lfosel] > 0.5 ? 1 : 0.0001)]);
    if (idx > 0) {
        key = TSPEC[idx - 1][0];
        send(4, "tgt", [TGT_NAMES[idx].replace(/ /g, "_"), normOf(idx, P[key]), normOf(idx, E(key, 0)),
                        P["lon" + lfosel] > 0.5 ? 1 : 0]);
    } else { send(4, "tgt", ["Off", 0, 0, 0]); }
    mods = activeMods();
    if (!mods.length) { outlet(5, "mods", "none"); }
    else {
        for (i = 0; i < mods.length; i++) {
            m = mods[i]; key = TSPEC[m.idx - 1][0];
            arr.push(TGT_NAMES[m.idx].replace(/ /g, "_"), r4(normOf(m.idx, P[key])), r4(normOf(m.idx, E(key, 0))), m.lfos.join(","));
        }
        outlet(5, ["mods"].concat(arr));
    }
    if (wtModulated()) { drawWave(); }
    if (lastFire && envInfo) {
        el = (now - lastFire.t) / 1000;
        if (el <= envInfo.T) {
            x1 = el / envInfo.T;
            x2 = envInfo.lp ? ((el % envInfo.L) / envInfo.T) : -1;
            send(2, "ehead", [x1, x2]); envShown = 1;
        } else if (envShown) { send(2, "ehead", [-1, -1]); envShown = 0; }
    }
}
function showLfo(n) {
    var i, s, o, names = ["lon", "lshape", "lrate", "ldepth", "lsync", "ldiv", "ltgt"];
    for (i = 0; i < NL; i++) {
        for (s = 0; s < names.length; s++) {
            try {
                o = this.patcher.getnamed("ctl_" + names[s] + i);
                if (o) { o.hidden = (i === n) ? 0 : 1; }
            } catch (e) {}
        }
    }
}
function drawBeat() {
    var out = [], i, e;
    for (i = 0; i < TPB; i++) {
        e = pat[i];
        if (e) { out.push(Math.floor(i * 192 / TPB), e.v, e.p, e.g * 192 / TPB); }
    }
    outlet(3, "meta", TPB);
    send(3, "hits", out.length ? out : [-1, 0, 0, 0]);
}

// ---------- beat generator (parameters can be LFO-modulated per step) ----------
function R(k2, salt, bic) {
    var c = (h(seed, k2, salt * 131 + 17) < MUT) ? cycle : 0;
    return h(seed, k2 + bic * 10007, salt + c * 7919);
}
function place(t, v, p, o, g) {
    if (t < 0 || t >= TPB) { return; }
    pat[t] = { v: clamp(v, 0.05, 1), p: p, o: o, g: Math.max(1, g) };
}
function genBar(bar) {
    var lb = [1, 2, 4][P.bars | 0] || 2;
    var bic = ((bar % lb) + lb) % lb;
    cycle = Math.floor(bar / lb);
    MUT = clamp(E("mutate", 0), 0, 1);
    pat = [];
    var i;
    for (i = 0; i < TPB; i++) { pat[i] = null; }

    var gridT = [24, 12, 6][P.grid | 0] || 12;
    var beats = Math.ceil(TPB / 48), b, bt, div, isTrip, s, tk, off, w, p, t2;
    var vv, pp, po, gt, n, sp, up, k, tt, cxB, den, cxS, sw, acc, pj, pjt, gf, rat;

    for (b = 0; b < beats; b++) {
        bt = b * 48;
        cxB = Eb("cx", bt);
        div = gridT;
        if (R(bt, 1, bic) < cxB * 0.45 && gridT > 6) { div = gridT / 2; }
        if (P.trip >= 0.5 && R(bt, 2, bic) < 0.2 + 0.55 * cxB) {
            div = gridT === 24 ? 16 : (gridT === 12 ? 8 : 4);
        }
        isTrip = (div === 16 || div === 8 || div === 4);
        for (s = 0; s * div < 48; s++) {
            off = s * div;
            tk = bt + off;
            if (tk >= TPB) { break; }
            den = Eb("density", tk);
            if (isTrip) { w = s === 0 ? (b === 0 ? 1 : 0.85) : 0.4; }
            else { w = off === 0 ? (b === 0 ? 1 : 0.85) : (off === 24 ? 0.6 : (off % 12 === 0 ? 0.45 : 0.3)); }
            p = Math.min(1, den * (0.35 + 1.25 * w));
            if (!((tk === 0 && den > 0.04) || R(tk, 3, bic) < p)) { continue; }

            cxS = Eb("cx", tk); sw = Eb("swing", tk); acc = Eb("accent", tk);
            pj = Eb("pjit", tk); pjt = Eb("posjit", tk); gf = Eb("gatef", tk); rat = Eb("ratchet", tk);
            t2 = tk;
            if (!isTrip && s % 2 === 1) { t2 += Math.round(sw * div / 3); }
            if (R(tk, 4, bic) < 0.25 * cxS) { t2 += Math.round((R(tk, 5, bic) - 0.5) * 3); }

            vv = 0.55 + 0.45 * w;
            vv = (1 - acc) * 0.9 + acc * (vv * (0.7 + 0.3 * R(tk, 6, bic)));
            pp = 0;
            if (pj > 0 && R(tk, 7, bic) < 0.25 + 0.6 * cxS) {
                pp = Math.round((R(tk, 8, bic) * 2 - 1) * pj);
            }
            po = (R(tk, 9, bic) * 2 - 1) * pjt;
            gt = div * gf * (0.6 + 0.8 * R(tk, 10, bic));
            place(t2, vv, pp, po, gt);

            if (R(tk, 11, bic) < rat * 0.6) {
                n = 2 + Math.floor(R(tk, 12, bic) * 3);
                sp = Math.max(2, Math.floor(div / n));
                up = R(tk, 13, bic);
                for (k = 1; k < n; k++) {
                    tt = t2 + k * sp;
                    if (tt >= TPB) { break; }
                    place(tt, vv * Math.pow(0.8, k),
                          pp + (up < 0.35 ? k * 2 : (up > 0.7 ? -k * 2 : 0)),
                          po, Math.max(1, sp * gf));
                }
            }
        }
    }
    if (bic === lb - 1) {
        cxS = Eb("cx", TPB - 24); rat = Eb("ratchet", TPB - 24); pjt = Eb("posjit", TPB - 24);
        if (R(9999, 14, bic) < cxS * 0.25 + rat * cxS * 0.6) {
            up = R(9999, 15, bic);
            for (k = 0; k < 6; k++) {
                place(TPB - 24 + k * 4, 0.45 + 0.1 * k,
                      up < 0.5 ? k * 2 : -k * 2, (R(9999, 16 + k, bic) * 2 - 1) * pjt, 3);
            }
        }
    }
    drawBeat();
}

// ---------- transport-slaved playback ----------
function refreshSong() {
    try {
        var t = api.get("tempo"); if (t && t[0] > 20) { bpm = t[0]; outlet(0, "bpm", bpm); }
        var n = api.get("signature_numerator"), d = api.get("signature_denominator");
        if (n && d && d[0] > 0) {
            var nt = Math.round(48 * n[0] * 4 / d[0]);
            if (nt !== TPB && nt > 0) { TPB = nt; curBar = -1; }
        }
    } catch (e) {}
}
function fire(ev) {
    var g = Math.max(8, ev.g * 60000 / (bpm * 48)), i;
    if (P.loopon > 0.5) {
        // looping envelope: make sure the gate spans at least 3 loop cycles so the loop is audible
        g = Math.min(4000, Math.max(g, 3 * (P.att + P.dec) * Math.max(0.03, E("lend", 0))));
    }
    outlet(0, "vel", r4(ev.v));
    outlet(0, "poff", ev.p);
    outlet(0, "poso", r4(ev.o));
    var vi = 0;
    if (P.poly > 0.5) { vi = voiceCtr % 8; voiceCtr++; }
    outlet(0, "vidx", vi);
    outlet(0, "gms", r4(g));
    hitCount++;
    outlet(0, "hit", hitCount);
    lastFire = { t: Date.now(), g: g };
    if (P.retrig > 0.5) {
        for (i = 0; i < NL; i++) {
            if (P["lsync" + i] < 0.5) { LF[i].ph = 0; LF[i].n += 1; }
        }
    }
}
function processTick(t) {
    var bar = Math.floor(t / TPB), tb = t - bar * TPB;
    curTb = tb;
    outlet(0, "bpos", r4(t / 48));
    if (bar !== curBar) { curBar = bar; genBar(bar); }
    var ev = pat[tb];
    if (ev) { fire(ev); }
    tickCount++;
    if (tickCount % 2 === 0) { outlet(3, "play", r4(tb * 192 / TPB)); }
}
function bang() {
    if (!ready) { return; }
    var now = Date.now(), dt = lastNow ? (now - lastNow) / 1000 : 0.005, playing = 0, tm = null, tick, t, pl;
    lastNow = now;
    if (dt > 0.25) { dt = 0.005; }
    polls++;
    if (api !== null) {
        // while playing, only re-check the transport state every 8th poll (saves LiveAPI calls)
        if (playingCache ? (polls % 8 === 0) : (polls % 2 === 0)) {
            pl = api.get("is_playing");
            playingCache = (pl && pl[0] > 0) ? 1 : 0;
        }
        playing = playingCache;
        if (playing) { tm = api.get("current_song_time"); bcJS = tm[0]; }
    }
    if (!playing) { bcJS += dt * bpm / 60; }
    stepLfos(dt);
    if (!playing || !power) {
        if (wasPlaying) { outlet(3, "play", -1); }
        wasPlaying = 0; lastTick = -99999;
        uiTick(now);
        return;
    }
    if (!wasPlaying || polls % 200 === 1) { refreshSong(); }
    wasPlaying = 1;
    tick = Math.floor(tm[0] * 48 + 0.0001);
    if (tick !== lastTick) {
        if (tick > lastTick && tick - lastTick <= 4) {
            for (t = lastTick + 1; t <= tick; t++) { processTick(t); }
        } else {
            processTick(tick);
        }
        lastTick = tick;
    }
    uiTick(now);
}

// ---------- parameters ----------
function pushAll() {
    var k2, i;
    for (k2 in DEF) { if (DEF[k2].t === "v") { outlet(0, k2, P[k2]); } }
    for (i = 0; i < NL; i++) { outlet(0, "lcpb" + i, cpbOf(i)); }
    outlet(0, "bpm", bpm);
}
function reseedNow() {
    seed = Math.floor(Math.random() * 1000000000) + 1;
    genBar(curBar < 0 ? 0 : curBar);
}
function anything() {
    var nm = messagename, v = arguments.length ? arguments[0] : 0;
    if (nm === "reseed") {
        if (v === 0 || v === "0") { return; }
        reseedNow();
        return;
    }
    if (nm === "power") { power = v > 0 ? 1 : 0; return; }
    if (nm === "lfosel") {
        lfosel = clamp(v | 0, 0, NL - 1);
        showLfo(lfosel);
        drawLfo();
        return;
    }
    if (!DEF.hasOwnProperty(nm)) { return; }
    P[nm] = v;
    if (DEF[nm].t === "v") { outlet(0, nm, v); }
    if (nm.indexOf("ldiv") === 0) { outlet(0, "lcpb" + nm.substring(4), cpbOf(nm.substring(4) | 0)); }
    if (ready) {
        if (WTSET[nm]) { drawWave(); }
        if (ENVSET[nm]) { drawEnv(); }
        if (BEATSET[nm]) { genBar(curBar < 0 ? 0 : curBar); }
        if (nm.charAt(0) === "l" && /\d$/.test(nm)) { drawLfo(); }
    }
}
function init() {
    buildTable();
    fillBuffer();
    fillTask = new Task(fillBuffer, this);
    fillTask.schedule(800);
    try {
        api = new LiveAPI();
        api.path = "live_set";
        refreshSong();
    } catch (e) { post("Glitch Machine: LiveAPI unavailable: " + e + "\n"); api = null; }
    outlet(1, "setmode", "wave");
    outlet(2, "setmode", "env");
    outlet(3, "setmode", "beat");
    outlet(4, "setmode", "lfo");
    outlet(5, "setmode", "mods");
    ready = 1;
    pushAll();
    showLfo(lfosel);
    drawWave(); drawEnv(); drawLfo();
    genBar(0);
}

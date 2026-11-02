// pianogen.js - Peaceful Piano generator.  ONE outlet:  [js pianogen.js] -> [route note viz ctl]
//   route outlet 0 "note" -> [noteout]    outlet 1 "viz" -> [jsui pianoviz.js]    outlet 2 "ctl" -> [ctlout]
autowatch = 1;
inlets = 1;
outlets = 1;          // everything leaves through outlet 0, tagged note / viz / ctl  ->  [route note viz ctl]
var BUILD = "2026-10 build 14 (single outlet)";
post("Peaceful Piano generator - " + BUILD + " loaded\n");
function emit(kind) {
    var tag = (kind === 0) ? "note" : ((kind === 1) ? "viz" : "ctl"), a = arguments, n = a.length - 1;
    switch (n) {
        case 0: outlet(0, tag); break;
        case 1: outlet(0, tag, a[1]); break;
        case 2: outlet(0, tag, a[1], a[2]); break;
        case 3: outlet(0, tag, a[1], a[2], a[3]); break;
        case 4: outlet(0, tag, a[1], a[2], a[3], a[4]); break;
        case 5: outlet(0, tag, a[1], a[2], a[3], a[4], a[5]); break;
        default: outlet(0, tag, a[1], a[2], a[3], a[4], a[5], a[6]); break;
    }
}
var TPS = 3;                                   // ticks per 16th step
var NOTE_NAMES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
var DENOMS = [2, 4, 8, 16];
var SCALES = [
    { name: "Major (Ionian)",   mel: [0, 2, 4, 5, 7, 9, 11] },
    { name: "Dorian",           mel: [0, 2, 3, 5, 7, 9, 10] },
    { name: "Phrygian",         mel: [0, 1, 3, 5, 7, 8, 10] },
    { name: "Lydian",           mel: [0, 2, 4, 6, 7, 9, 11] },
    { name: "Mixolydian",       mel: [0, 2, 4, 5, 7, 9, 10] },
    { name: "Minor (Aeolian)",  mel: [0, 2, 3, 5, 7, 8, 10] },
    { name: "Locrian",          mel: [0, 1, 3, 5, 6, 8, 10] },
    { name: "Harmonic Minor",   mel: [0, 2, 3, 5, 7, 8, 11] },
    { name: "Melodic Minor",    mel: [0, 2, 3, 5, 7, 9, 11] },
    { name: "Major Pentatonic", mel: [0, 2, 4, 7, 9],  ch: [0, 2, 4, 5, 7, 9, 11] },
    { name: "Minor Pentatonic", mel: [0, 3, 5, 7, 10], ch: [0, 2, 3, 5, 7, 8, 10] }
];
var NEXT = { 0: [3, 5, 4, 1, 2], 1: [4, 0], 2: [5, 3], 3: [4, 0, 1], 4: [0, 5, 3], 5: [3, 1, 4], 6: [0] };
var PROGS_SIMPLE = [[0, 5, 3, 4], [0, 3, 5, 4], [0, 4, 5, 3], [0, 3, 0, 4], [0, 5, 3, 0], [0, 3, 4, 0]];
var PROGS_RICH = [[5, 3, 0, 4], [0, 2, 3, 4], [0, 5, 1, 4], [0, 2, 5, 3], [0, 4, 3, 4], [3, 0, 4, 5], [0, 2, 1, 4], [5, 2, 3, 0]];
var PATTERNS = [[0, 1, 2, 3, 2, 1], [0, 2, 1, 2], [0, 1, 2, 1], [0, 2, 3, 2, 1, 2], [0, 2, 1, 3, 2, 1], [0, 1, 2, 3, 4, 3, 2, 1]];
var ALB = [0, 2, 1, 2];
var FIG_STATIC = 1, FIG_ARP = 2, FIG_ALBERTI = 3, FIG_ROLL = 4, FIG_OOMPAH = 5, FIG_REPEAT = 6, FIG_MIXED = 7, FIG_HALFPAH = 8, FIG_NOCTURNE = 9, FIG_PULSE = 10, FIG_OSTINATO = 11, FIG_WALK = 12;
var HARM_BARS = { 1: 4, 2: 2, 3: 1 };
var STYLES = [
    { name: "Free" },
    { name: "Cool Modal", fig: FIG_HALFPAH, harm: 3, ext: 0.40, susP: 0, restB: 0.22, longB: 1.7, shortB: 0.5, leapB: 0.4, center: 74,
      velMul: 0.85, motifB: 0.25, accMul: 0.6, tripM: 0.3,
      dw: { 1: 0, 2: 0.3, 3: 0, 4: 1.5, 6: 0.8, 8: 1.8, 12: 1.4, 16: 0.8 },
      progs: [[0, 3, 0, 3], [3, 0, 3, 0], [0, 3, 1, 3], [1, 4, 1, 4]] },
    { name: "Felt Ostinato", fig: FIG_OSTINATO, harm: 2, cdB: 0.15, ext: 0.05, susP: 0.1, stac: 0.55, restB: 0.45, longB: 1.8, shortB: 0.4,
      leapB: 0.35, center: 64, velMul: 0.55, motifB: 0.6, accMul: 0.5, arc: 0.18, tripM: 0.3,
      dw: { 2: 0.1, 4: 0.5, 8: 2, 12: 2, 16: 1.5 },
      progs: [[0, 5, 3, 2], [0, 3, 5, 2], [0, 2, 5, 3]] },
    { name: "Glacial Drift", fig: FIG_ARP, harm: 2, cdB: -0.25, ext: 0.15, susP: 0.3, open: 1, bassOct: 1, restB: 0.4, longB: 2.2, shortB: 0.3,
      leapB: 0.5, center: 68, velMul: 0.7, motifB: 0.15, accMul: 0.4, octM: 1.5, arc: 0.1, tripM: 0,
      dw: { 1: 0, 2: 0, 3: 0, 4: 0.4, 8: 1.5, 12: 2, 16: 3 },
      progs: [[0, 5, 0, 3], [0, 3, 5, 3], [5, 3, 0, 4]] },
    { name: "Solemn Hymn", fig: FIG_STATIC, strikeP: 1, harm: 3, ext: -0.30, susP: 0, bassOct: 1, restB: 0.10, longB: 1.4, shortB: 0.3,
      leapB: 0.3, repB: 2.5, center: 66, velMul: 0.95, motifB: 0.4, accMul: 0.8, octM: 2, tripM: 0,
      dw: { 2: 0.15, 4: 2.5, 6: 0.4, 8: 2, 12: 0.3, 16: 0.2 },
      progs: [[0, 3, 0, 4], [0, 5, 3, 4], [0, 4, 5, 3], [3, 0, 4, 0]] },
    { name: "Folk Waltz", fig: FIG_OOMPAH, fifthP: 0.6, harm: 3, ext: -0.10, susP: 0, restB: 0, longB: 0.8, shortB: 1.3, leapB: 1.4, center: 77,
      velMul: 0.95, motifB: 0.35, tripM: 1.2, ornB: 0.5, accMul: 1.4,
      dw: { 2: 1.8, 3: 1.2, 4: 1.2, 6: 2.2, 8: 0.5 },
      progs: [[0, 3, 4, 0], [5, 3, 4, 0], [0, 3, 5, 4]] },
    { name: "Rolling Loops", fig: FIG_ROLL, harm: 3, cdB: 0.1, ext: 0.05, susP: 0, restB: 0.05, longB: 1.0, shortB: 1.0, leapB: 0.7, center: 74,
      velMul: 0.85, motifB: 0.4, tripM: 1.2, arc: 0.15, accMul: 1,
      dw: { 2: 1.5, 4: 2, 6: 1, 8: 0.8 },
      progs: [[0, 5, 3, 4], [5, 3, 0, 4], [0, 3, 5, 4], [0, 4, 5, 3]] },
    { name: "Impressionist", fig: FIG_MIXED, harm: 4, cdB: -0.1, ext: 0.40, susP: 0.2, open: 1, wM: 2.5, restB: 0.12, longB: 0.9, shortB: 1.0,
      leapB: 1.2, center: 81, velMul: 0.75, motifB: 0.1, tripM: 2.5, ornB: 0.5, accMul: 0.8, stac: 1.4,
      dw: { 1: 1, 2: 1.3, 3: 1.5, 4: 1, 6: 1.5, 8: 0.7 },
      progs: [[0, 1, 3, 2], [3, 2, 1, 0], [0, 2, 1, 3]] },
    { name: "Romantic Nocturne", fig: FIG_NOCTURNE, harm: 3, cdB: 0.15, ext: 0.15, susP: 0.05, wM: 1.3, restB: 0.02, longB: 0.7, shortB: 1.5,
      leapB: 1.2, center: 79, velMul: 0.9, motifB: 0.3, tripM: 1.3, ornB: 0.9, accMul: 1.6,
      dw: { 1: 1.8, 2: 1.5, 3: 0.8, 4: 1, 6: 0.8, 8: 1 },
      progs: [[0, 5, 1, 4], [0, 2, 5, 1], [0, 4, 0, 4], [0, 3, 4, 0]] },
    { name: "Minimal Pulse", fig: FIG_PULSE, harm: 2, ext: 0, susP: 0, stac: 0.7, restB: 0.35, longB: 1.6, shortB: 0.6, leapB: 0.6, center: 72,
      velMul: 0.8, motifB: 0.7, accMul: 0.15, tripM: 0.5,
      dw: { 2: 0.4, 4: 1, 8: 2, 16: 2 },
      progs: [[0, 5, 2, 6], [0, 2, 5, 6], [0, 3, 6, 5]] },
    { name: "Elegiac Drone", fig: FIG_STATIC, strikeP: 0.2, drone: 1, bassOct: 1, harm: 2, ext: 0.10, susP: 0.1, restB: 0.25, longB: 2.2, shortB: 0.35,
      leapB: 0.5, center: 73, dirBias: -0.8, velMul: 0.75, motifB: 0.6, accMul: 0.5, tripM: 0,
      dw: { 2: 0, 4: 0.6, 8: 2, 12: 2.5, 16: 2 },
      progs: [[0, 5, 3, 5], [0, 3, 5, 3], [5, 3, 4, 0]] },
    { name: "Sweet Ballad", fig: FIG_ARP, harm: 3, cdB: 0.32, ext: 0.10, susP: 0, restB: 0, longB: 0.9, shortB: 1, leapB: 1.5, center: 78,
      velMul: 0.9, motifB: 0.45, tripM: 0.8, accMul: 1.2, octM: 1.5,
      dw: { 2: 0.8, 4: 1.5, 6: 1.2, 8: 1.2 },
      progs: [[0, 4, 5, 3], [0, 5, 3, 4], [3, 0, 4, 5]] },
    { name: "Open Pentatonic", fig: FIG_ALBERTI, harm: 3, ext: 0, susP: 0.4, open: 1, pent: 1, restB: 0.3, longB: 1.2, shortB: 0.7, leapB: 1.3, center: 76,
      velMul: 0.8, motifB: 0.35, accMul: 0.8, tripM: 0.4,
      dw: { 2: 0.4, 4: 1.3, 6: 0.6, 8: 2, 12: 1 },
      progs: [[0, 4, 0, 4], [0, 3, 4, 3], [0, 1, 0, 4]] },
    { name: "Soft Lullaby", fig: FIG_OOMPAH, fifthP: 1, harm: 3, ext: -0.2, susP: 0, restB: 0.12, longB: 1.3, shortB: 0.5, leapB: 0.3, repB: 1.5,
      center: 80, velMul: 0.6, motifB: 0.5, accMul: 0.6, tripM: 0.3,
      dw: { 2: 0.4, 4: 2, 6: 1.5, 8: 1.5, 12: 0.5 },
      progs: [[0, 3, 4, 0], [0, 5, 3, 4], [0, 4, 3, 0]] },
    { name: "Music Box", fig: FIG_ARP, lift: 12, stac: 0.4, cdB: 0.15, harm: 3, ext: 0.1, susP: 0, restB: 0.1, longB: 0.5, shortB: 1.5,
      leapB: 1.3, center: 83, velMul: 0.65, motifB: 0.5, accMul: 0.9, tripM: 1, ornB: 0.3,
      dw: { 2: 1.8, 3: 1, 4: 1.5, 6: 0.8, 8: 0.4 },
      progs: [[0, 5, 3, 4], [0, 3, 5, 4], [0, 4, 5, 3]] },
    { name: "Wry Staccato", fig: FIG_REPEAT, cdB: -0.2, stac: 0.3, mstac: 0.45, harm: 3, ext: 0.2, susP: 0, restB: 0.12, longB: 0.3, shortB: 1.6,
      leapB: 1.2, center: 76, velMul: 0.9, motifB: 0.4, accMul: 1.5, tripM: 1.2,
      dw: { 2: 1.6, 3: 1, 4: 1.8, 6: 0.4, 8: 0.3, 12: 0, 16: 0 },
      progs: [[0, 5, 1, 4], [0, 3, 4, 5], [5, 1, 4, 0]] },
    { name: "Pendulum Repeat", fig: FIG_STATIC, strikeP: 0.5, harm: 3, ext: 0, susP: 0.1, restB: 0.3, longB: 1.6, shortB: 0.4, leapB: 0.1, repB: 6,
      center: 72, velMul: 0.7, motifB: 0.9, accMul: 0.4, tripM: 0,
      dw: { 4: 1, 8: 2.5, 12: 1, 16: 1.5 },
      progs: [[0, 5, 0, 5], [0, 3, 0, 3], [5, 3, 5, 3]] },
    { name: "Brooding Low", fig: FIG_OSTINATO, lift: -12, drone: 1, bassOct: 1, stac: 0.6, harm: 2, ext: 0.1, susP: 0.15, restB: 0.35, longB: 2, shortB: 0.3,
      leapB: 0.5, center: 66, dirBias: -0.3, velMul: 0.7, motifB: 0.6, accMul: 0.5, arc: 0.3, tripM: 0,
      dw: { 2: 0, 4: 0.5, 8: 2, 12: 2.5, 16: 2 },
      progs: [[0, 5, 3, 4], [0, 5, 2, 6], [5, 3, 0, 4]] },
    { name: "Jazz Ballad", fig: FIG_WALK, harm: 4, ext: 0.6, susP: 0.2, open: 1, wM: 1.5, restB: 0.15, longB: 1.0, shortB: 1.1, leapB: 1.3, center: 76,
      velMul: 0.8, motifB: 0.15, accMul: 1.1, tripM: 2, ornB: 0.25,
      dw: { 2: 1.4, 3: 1, 4: 1.5, 6: 1.1, 8: 0.8 },
      progs: [[1, 4, 0, 5], [0, 5, 1, 4], [2, 5, 1, 4], [1, 4, 0, 3]] }
];
var MEL_LO = 62, MEL_HI = 88;
var P = {
    key: 0, scale: 0, num: 4, denIdx: 1, style: 0,
    chords: 1, pedal: 1, fig: 0, harm: 0, cComp: 0.35, cDens: 0.4, wander: 0.2, cLvl: 0.5,
    melody: 1, mComp: 0.35, mDens: 0.4, syn: 0.5, down: 0.65, rep: 0.5, inv: 0.25, tripOn: 1, trip: 0.25, oct: 0.25, octDir: 0, mLvl: 0.5,
    human: 0.5, vel: 0.6, sync: 1, power: 1
};
var ST = STYLES[0];
var M = { S: 16, u: 4, gstarts: [0], acc: [], beats: [], beatStarts: [0], compound: false };
var rngState = (Date.now() % 4294967296) || 1;
var mIdx = null, dirState = 1;
var keyShift = 0, lastSlots = null, excQueue = [], lastRoot = -1;
var prog = null, chordIdx = 0, curChord = null, barsHeld = 0, patIdx = 0, motif = null;
var phraseBar = 0, barNo = 0, tk = 0, absTick = 0;
var barEvents = [], active = [], tasks = [];
var tieReq = null, pedalDown = false, degOn = [1, 1, 1, 1, 1, 1, 1], pulseCtr = 0;
var waiting = true, lastTickT = 0, refMs = 80, barSigT = -1;
var wd = null;
function rnd() {
    rngState = (rngState * 1664525 + 1013904223) % 4294967296;
    return rngState / 4294967296;
}
function rr(a, b) { return a + rnd() * (b - a); }
function pick(a) { return a[Math.floor(rnd() * a.length)]; }
function clampn(x, a, b) { return Math.max(a, Math.min(b, x)); }
function c01(x) { return Math.max(0, Math.min(1, x)); }
function sv(k, d) { return (ST[k] === undefined) ? d : ST[k]; }
function degPitch(arr, idx) {
    var n = arr.length, o = Math.floor(idx / n);
    return arr[idx - o * n] + 12 * o;
}
function arcOff() { return sv("arc", 0) * Math.sin(2 * Math.PI * barNo / 16); }
function accAt(t) { return (t % TPS !== 0) ? 0.2 : M.acc[t / TPS]; }
function groupsFor(num, dn) {
    var g = [], i, left;
    if (num <= 3) return [num];
    if (num === 4) return [2, 2];
    if (num === 5) return [3, 2];
    if (num === 6) return [3, 3];
    if (num === 7) return dn >= 8 ? [2, 2, 3] : [4, 3];
    if (num % 3 === 0) { for (i = 0; i < num / 3; i++) g.push(3); return g; }
    if (num % 2 === 0) { for (i = 0; i < num / 2; i++) g.push(2); return g; }
    left = num;
    while (left > 3) { g.push(2); left -= 2; }
    g.push(left);
    return g;
}
function computeMeter() {
    var dn = DENOMS[P.denIdx];
    var u = 16 / dn;
    var S = P.num * u;
    var groups = groupsFor(P.num, dn);
    var acc = [], gstarts = [], pos = 0, gi, k, s, beats = [], beatStarts = [];
    for (s = 0; s < S; s++) acc.push(-1);
    for (gi = 0; gi < groups.length; gi++) {
        gstarts.push(pos * u);
        acc[pos * u] = (gi === 0) ? 1.0 : 0.72;
        for (k = 1; k < groups[gi]; k++) acc[(pos + k) * u] = 0.5;
        if (dn >= 8) beats.push({ s: pos * u, len: groups[gi] * u });
        pos += groups[gi];
    }
    if (dn < 8) for (s = 0; s < S; s += u) beats.push({ s: s, len: Math.min(u, S - s) });
    for (s = 0; s < S; s++) {
        if (acc[s] < 0) acc[s] = (s % 4 === 0) ? 0.42 : ((s % 2 === 0) ? 0.3 : 0.16);
    }
    for (s = 0; s < beats.length; s++) beatStarts.push(beats[s].s);
    M = { S: S, u: u, gstarts: gstarts, acc: acc, beats: beats, beatStarts: beatStarts,
          compound: (dn >= 8 && P.num >= 6 && P.num % 3 === 0) };
}
function beatsIn(sl) {
    var out = [], i, b;
    for (i = 0; i < M.beats.length; i++) {
        b = M.beats[i];
        if (b.s >= sl.s0 && b.s < sl.s1) out.push({ s: b.s, len: Math.min(b.len, sl.s1 - b.s) });
    }
    if (out.length === 0) out.push({ s: sl.s0, len: sl.s1 - sl.s0 });
    return out;
}
function apFor(len, level) {
    if (level <= 0) return len;
    var n = M.compound ? (level === 1 ? 3 : 6) : (level === 1 ? 2 : 4);
    return Math.max(1, Math.round(len / n));
}
function chordName(pitches, sus, has7, has9) {
    var nm = NOTE_NAMES[pitches[0] % 12];
    var iv = [], i;
    for (i = 0; i < pitches.length; i++) iv.push(pitches[i] - pitches[0]);
    var third = iv[1], fifth = iv[2], sev = has7 ? iv[3] : -1;
    var q = "";
    if (sus) q = "sus" + sus;
    else if (third === 3 && fifth === 6) q = "dim";
    else if (fifth === 8) q = "aug";
    else if (third === 3) q = "m";
    if (has7) {
        if (q === "dim") q = (sev === 9) ? "dim7" : "m7b5";
        else if (q === "m") q = (sev === 11) ? "m(maj7)" : "m7";
        else if (q === "aug") q = "aug7";
        else if (q.indexOf("sus") === 0) q = ((sev === 11) ? "maj7" : "7") + q;
        else q = (sev === 11) ? "maj7" : "7";
    }
    if (has9) { q = has7 ? q.replace("7", "9") : q + "add9"; }
    return nm + q;
}
function wEff() { return c01(P.wander * sv("wM", 1)) * 0.4; }
function allowedDeg(d) {
    var i, any = false;
    for (i = 0; i < 7; i++) if (degOn[i]) any = true;
    if (!any) return 0;
    if (degOn[d]) return d;
    var order = [(d + 2) % 7, (d + 5) % 7, (d + 4) % 7, (d + 3) % 7, (d + 1) % 7, (d + 6) % 7];
    for (i = 0; i < order.length; i++) if (degOn[order[i]]) return order[i];
    return d;
}
function blocked(rootSemi) {                      // chromatic chord rooted on a switched-off degree
    for (var i = 0; i < 7; i++) if (!degOn[i] && scaleSemi(i) === rootSemi) return true;
    return false;
}
function kEff() { return (P.key + keyShift) % 12; }
function widePcs(pitches, sus) {
    var root = pitches[0], rel = {}, iv = [], i, r;
    for (i = 0; i < pitches.length; i++) { iv.push(pitches[i] - root); rel[(pitches[i] - root) % 12] = 1; }
    var third = iv[1], fifth = iv[2], sev = (iv.length > 3) ? iv[3] % 12 : -1;
    if (sus) { rel[2] = 1; rel[5] = 1; rel[10] = 1; }
    else if (third === 3 && fifth === 6) { rel[10] = 1; }
    else if (fifth === 8) { }
    else if (third === 4) { rel[2] = 1; rel[9] = 1; if (sev !== 11) rel[10] = 1; if (sev !== 10) rel[11] = 1; }
    else if (third === 3) { rel[2] = 1; rel[5] = 1; rel[9] = 1; if (sev !== 11) rel[10] = 1; }
    var out = [];
    for (r in rel) out.push((root + parseInt(r, 10)) % 12);
    return out;
}
function finishChord(pitches, sus, has7, has9, deg) {
    var i, bass = pitches[0], pcs = [];
    while (bass > 45) bass -= 12;
    while (bass < 33) bass += 12;
    for (i = 0; i < pitches.length; i++) pcs.push(pitches[i] % 12);
    var notes = pitches;
    if (sv("open", 0) && pitches.length >= 3) {              // open voicing: lift the 3rd an octave
        notes = pitches.slice(); notes[1] += 12;
        notes.sort(function (x, y) { return x - y; });
    }
    var inv = 0, invBass, nm = chordName(pitches, sus, has7, has9);
    if (P.inv > 0 && notes.length >= 3 && rnd() < P.inv)            // chord inversion (probability dial)
        inv = (notes.length >= 4 && rnd() < 0.4) ? 2 : ((rnd() < 0.62) ? 1 : 2);
    if (inv > 0 && !sv("drone", 0) && rnd() < 0.55) {               // sometimes the bass follows: a slash chord, e.g. C/E
        var ib = notes[inv];
        while (ib > 45) ib -= 12;
        while (ib < 33) ib += 12;
        invBass = ib;
        nm += "/" + NOTE_NAMES[ib % 12];
    }
    return { deg: deg, notes: notes, pcs: pcs, wide: widePcs(pitches, sus), bass: bass, inv: inv, invBass: invBass, name: nm };
}
function fitChord(pitches) {
    var i;
    while (pitches[0] < 46) for (i = 0; i < pitches.length; i++) pitches[i] += 12;
    while (pitches[pitches.length - 1] > 76 && pitches[0] > 46) for (i = 0; i < pitches.length; i++) pitches[i] -= 12;
}
function buildChord(deg, plain) {
    var sc = SCALES[P.scale], ch = sc.ch || sc.mel;
    var comp = c01(P.cComp + sv("ext", 0)), base = 36 + kEff();
    var idxs = [deg, deg + 2, deg + 4], has7 = false, has9 = false, sus = 0, i;
    if (comp >= 0.15 && rnd() < 0.12 + 0.75 * comp) { idxs.push(deg + 6); has7 = true; }
    if (!plain && has7 && comp > 0.45 && rnd() < (comp - 0.4)) { idxs.push(deg + 8); has9 = true; }
    else if (!plain && !has7 && comp > 0.6 && rnd() < 0.2) { idxs.push(deg + 8); has9 = true; }
    var spb = (ST.susP !== undefined) ? ST.susP : (comp > 0.65 ? 0.12 : 0);
    if (!plain && spb > 0 && rnd() < spb) {
        sus = (rnd() < 0.5) ? 2 : 4;
        idxs[1] = (sus === 2) ? deg + 1 : deg + 3;
    }
    var pitches = [];
    for (i = 0; i < idxs.length; i++) pitches.push(base + degPitch(ch, idxs[i]));
    fitChord(pitches);
    return finishChord(pitches, sus, has7, has9, deg);
}
var KINDS = { maj: [0, 4, 7], min: [0, 3, 7], dom7: [0, 4, 7, 10], maj7: [0, 4, 7, 11], m7: [0, 3, 7, 10],
              dim: [0, 3, 6], dim7: [0, 3, 6, 9], sus4: [0, 5, 7] };
function buildChromatic(rootSemi, kind, plain) {
    var iv = KINDS[kind].slice(), comp = c01(P.cComp + sv("ext", 0)), base = 36 + kEff() + rootSemi, i;
    if (!plain && kind === "maj" && comp > 0.5 && rnd() < 0.5) iv = KINDS.maj7.slice();
    if (!plain && kind === "min" && comp > 0.4 && rnd() < comp) iv = KINDS.m7.slice();
    var pitches = [];
    for (i = 0; i < iv.length; i++) pitches.push(base + iv[i]);
    fitChord(pitches);
    return finishChord(pitches, (kind === "sus4") ? 4 : 0, iv.length > 3, false, -1);
}
function chordAt(slots, s) {
    for (var i = slots.length - 1; i >= 0; i--) if (s >= slots[i].s0) return slots[i].chord;
    return slots[0].chord;
}
function scaleSemi(d) { var sc = SCALES[P.scale], ch = sc.ch || sc.mel; return degPitch(ch, d) % 12; }
function chScaleArr() { var sc = SCALES[P.scale]; return sc.ch || sc.mel; }
function scalePcsAt(ks) {
    var ch = chScaleArr(), b = (P.key + ks) % 12, out = [], i;
    for (i = 0; i < ch.length; i++) out.push((b + ch[i]) % 12);
    return out;
}
function triadPcs(d, ks) {
    var ch = chScaleArr(), b = (P.key + ks) % 12;
    return [degPitch(ch, d), degPitch(ch, d + 2), degPitch(ch, d + 4)].map(function (x) { return (b + x) % 12; });
}
function subsetOf(pcs, set) { for (var i = 0; i < pcs.length; i++) if (set.indexOf(pcs[i]) < 0) return false; return true; }
var NEIGH = [7, 5];                                  // neighbouring keys: a fifth up / a fifth down
function setKeyShift(ks) {
    if (ks === keyShift) return;
    var oldPitch = (mIdx === null) ? null : melPitch(mIdx);
    keyShift = ks;
    if (oldPitch !== null) mIdx = nearestMelIdx(oldPitch);
    sendInfo();
}
function planExcursion() {
    var tg = pick(NEIGH), piv = [], bpiv = [], d, home = scalePcsAt(0), nw = scalePcsAt(tg);
    if (blocked(tg) || blocked((tg + 7) % 12) || blocked(7)) return;        // honour switched-off degrees
    for (d = 0; d < 6; d++) {
        if (!degOn[d]) continue;
        if (subsetOf(triadPcs(d, 0), nw) && (P.key + scaleSemi(d)) % 12 !== lastRoot && scaleSemi(d) !== (tg + 7) % 12) piv.push(d);   // pivot root must differ from the V7 that follows
        if (d !== 0 && subsetOf(triadPcs(d, tg), home) && !blocked((tg + scaleSemi(d)) % 12)) bpiv.push(d);
    }
    if (!piv.length || !bpiv.length) return;
    excQueue = [
        { d: pick(piv), ks: 0 },
        { root: (tg + 7) % 12, q: "dom7", ks: 0 },
        { d: 0, ks: tg },
        { d: pick(bpiv), ks: tg },
        { root: 7, q: "dom7", ks: 0 }
    ];
}
function newProgression() {
    var pool, w = wEff(), i;
    if (ST.progs) pool = ST.progs;
    else {
        pool = PROGS_SIMPLE;
        if (P.cComp > 0.3) pool = PROGS_SIMPLE.concat(PROGS_RICH);
        if (P.cComp > 0.6) pool = pool.concat(PROGS_RICH);
    }
    prog = pick(pool).slice();
    if (rnd() < w * 0.7) {                       // wander: grow a new pattern by a random (diatonic) harmonic walk
        var d = prog[0];
        prog = [d];
        for (i = 1; i < 4; i++) { d = pick(NEXT[d]); prog.push(d); }
    }
    chordIdx = 0;
    patIdx = Math.floor(rnd() * PATTERNS.length);
    if (excQueue.length === 0 && w > 0.02 && rnd() < c01(w / 0.4) * 0.45) planExcursion();
}
function neighbourChord() {
    var tg = pick(NEIGH), home = scalePcsAt(0), cands = [], d, pcs, root;
    for (d = 0; d < 6; d++) {
        pcs = triadPcs(d, tg);
        if (subsetOf(pcs, home)) continue;                          // already a home chord
        root = (tg + scaleSemi(d)) % 12;
        if (blocked(root)) continue;
        if ((pcs[2] - pcs[0] + 12) % 12 === 6) continue;            // no diminished triads
        cands.push(d);
    }
    if (!cands.length) return null;
    var old = keyShift, c;
    keyShift = tg;
    c = buildChord(pick(cands));
    keyShift = old;
    c.deg = -1;
    return c;
}
function fromSpec(sp) {
    setKeyShift(sp.ks);
    var c = (sp.root !== undefined) ? buildChromatic(sp.root, sp.q, true) : buildChord(allowedDeg(sp.d), true);   // transition chords stay plain
    if (sp.root !== undefined || sp.ks !== 0) c.deg = -1;
    return c;
}
function pickNormal() {
    var d = allowedDeg(prog[chordIdx++]);
    var nd = allowedDeg((chordIdx < prog.length) ? prog[chordIdx] : prog[0]);
    var w = wEff();
    if (w <= 0.001 || rnd() > Math.pow(w, 0.9) * 0.9) return buildChord(d);
    var tiers = [["near", 1.0 - 0.5 * w], ["sec", w > 0.12 ? 0.3 + 0.9 * w : 0], ["neigh", w > 0.3 ? 0.9 * w : 0]];
    var tot = 0, i, tier = "near";
    for (i = 0; i < tiers.length; i++) tot += tiers[i][1];
    var r = rnd() * tot;
    for (i = 0; i < tiers.length; i++) { r -= tiers[i][1]; if (r <= 0 && tiers[i][1] > 0) { tier = tiers[i][0]; break; } }
    if (tier === "sec") {
        var root = (scaleSemi(nd) + 7) % 12, kind = (rnd() < 0.5) ? "dom7" : "maj";
        var base = (P.key + root) % 12;
        var pcs = (kind === "dom7") ? [base, (base + 4) % 12, (base + 7) % 12, (base + 10) % 12] : [base, (base + 4) % 12, (base + 7) % 12];
        if (root !== scaleSemi(d) && !blocked(root) && (subsetOf(pcs, scalePcsAt(7)) || subsetOf(pcs, scalePcsAt(5))))
            return buildChromatic(root, kind, true);          // plain: keep it inside the neighbouring key
        tier = "near";
    }
    if (tier === "neigh") {
        var nc = neighbourChord();
        if (nc) return nc;
    }
    var opts = [(d + 2) % 7, (d + 5) % 7].concat(NEXT[d]).filter(function (x) { return x !== d && degOn[x] && (x !== 6 || w > 0.3); });
    return opts.length ? buildChord(pick(opts)) : buildChord(d);
}
function avoidRepeat(c) {
    var pool = ((c.deg >= 0) ? NEXT[c.deg] : [0, 3, 4, 5, 1, 2]).concat([0, 3, 4, 5, 1, 2]), cands = [], i, d;
    for (i = 0; i < pool.length; i++) {
        d = pool[i];
        if (d === 6 || !degOn[d] || cands.indexOf(d) >= 0) continue;
        if ((kEff() + scaleSemi(d)) % 12 === lastRoot) continue;
        cands.push(d);
    }
    if (!cands.length) return c;
    var nc = buildChord(pick(cands.slice(0, 3)));
    if (c.deg < 0) nc.deg = -1;
    return nc;
}
function pickChord() {
    var c;
    if (!excQueue.length && (!prog || chordIdx >= prog.length)) newProgression();
    c = excQueue.length ? fromSpec(excQueue.shift()) : pickNormal();
    if (c.notes[0] % 12 === lastRoot) c = avoidRepeat(c);
    lastRoot = c.notes[0] % 12;
    return c;
}
function nextChord() { return pickChord(); }
function makeSlots() {
    var h = (P.harm > 0) ? P.harm : sv("harm", 3);
    var slots = [], i;
    if (h <= 3) {
        var every = HARM_BARS[h], fresh = false;
        if (!curChord || barsHeld >= every) { curChord = nextChord(); barsHeld = 0; fresh = true; }
        barsHeld++;
        slots.push({ s0: 0, s1: M.S, chord: curChord, fresh: fresh });
    } else if (h === 4) {
        var sp = -1, bd = 1e9, d;
        for (i = 1; i < M.beatStarts.length; i++) {
            d = Math.abs(M.beatStarts[i] - M.S / 2);
            if (d < bd) { bd = d; sp = M.beatStarts[i]; }
        }
        if (sp > 0) {
            slots.push({ s0: 0, s1: sp, chord: nextChord(), fresh: true });
            slots.push({ s0: sp, s1: M.S, chord: nextChord(), fresh: true });
        } else slots.push({ s0: 0, s1: M.S, chord: nextChord(), fresh: true });
        curChord = null;
    } else {
        for (i = 0; i < M.beatStarts.length; i++) {
            var end = (i + 1 < M.beatStarts.length) ? M.beatStarts[i + 1] : M.S;
            slots.push({ s0: M.beatStarts[i], s1: end, chord: nextChord(), fresh: true });
        }
        curChord = null;
    }
    return slots;
}
function mkVel(kind, acc, f) {
    var am = sv("accMul", 1);
    var b = (kind === 0) ? 62 + 20 * acc * am : ((kind === 1) ? 38 + 18 * acc * am : 48 + 10 * acc * am);
    var lvl = 0.35 + 1.3 * ((kind === 0) ? P.mLvl : P.cLvl);
    var swell = 0.93 + 0.1 * Math.sin(Math.PI * (phraseBar + 0.5) / 4);
    var v = (b + rr(-5, 5)) * swell * (0.45 + 0.9 * P.vel) * sv("velMul", 1) * lvl * (f || 1);
    return Math.max(6, Math.min(120, Math.round(v)));
}
function addNoteT(t, p, v, d, k, ms) {
    if (t < 0 || t >= M.S * TPS) return;
    barEvents[t].push({ p: p, v: v, d: Math.max(1, Math.round(d)), k: k, ms: ms || 0 });
}
function addC(s, p, v, dSteps, k, ms) { addNoteT(s * TPS, (k === 1) ? Math.max(24, p + sv("lift", 0)) : p, v, dSteps * TPS * ((k === 1) ? sv("stac", 1) : 1), k, ms); }
function bassNote(s, bp, dSteps, f) {
    if (sv("drone", 0)) { bp = 36 + P.key; while (bp > 45) bp -= 12; }     // tonic pedal point
    addC(s, bp, mkVel(2, accAt(s * TPS), f), dSteps, 2, 0);
    if (sv("bassOct", 0)) addC(s, bp + 12, mkVel(2, accAt(s * TPS), (f || 1) * 0.72), dSteps, 2, 0);
}
function block(s, tones, dSteps, f, roll) {
    for (var j = 0; j < tones.length; j++) {
        var ms = roll ? j * rr(22, 45) : j * rr(12, 25);
        addC(s, tones[j], mkVel(1, accAt(s * TPS), f), dSteps, 1, ms);
    }
}
function upDown(L) {
    var o = [], i;
    for (i = 0; i < L; i++) o.push(i);
    for (i = L - 2; i >= 1; i--) o.push(i);
    return o;
}
function invertVoicing(arr, n) {
    var a = arr.slice(), i, x;
    for (i = 0; i < n; i++) { x = a.shift() + 12; a.push(x); }
    while (a[a.length - 1] > 80 && a[0] - 12 >= 40) a = a.map(function (p) { return p - 12; });
    return a;
}
function layChords(slots) {
    var fig = (P.fig > 0) ? P.fig : (sv("fig", 0) > 0 ? ST.fig : FIG_ARP);
    var dd = c01(P.cDens + sv("cdB", 0) + arcOff());
    var level = dd < 0.3 ? 0 : (dd < 0.7 ? 1 : 2);
    if ((fig === FIG_ALBERTI || fig === FIG_ROLL || fig === FIG_NOCTURNE || fig === FIG_PULSE) && level < 1) level = 1;
    var thick = (level === 2);
    if (fig === FIG_REPEAT || fig === FIG_OSTINATO) level = Math.min(level, 1);       // never faster than 8th notes
    var mult = (fig === FIG_ROLL || fig === FIG_NOCTURNE) ? 4 : ((fig === FIG_ALBERTI || fig === FIG_OSTINATO) ? 2 : 3);
    var si, sl, ch, tn, L, beats, bi, b, q, j, kk, len, m, rp, bb, up1;
    for (si = 0; si < slots.length; si++) {
        sl = slots[si]; ch = sl.chord; rp = ch.notes; tn = invertVoicing(rp, ch.inv || 0); L = tn.length; len = sl.s1 - sl.s0;
        bb = (ch.invBass !== undefined) ? ch.invBass : ch.bass;                         // bass note (the inversion's lowest tone if it follows)
        up1 = (ch.inv > 0 && ch.invBass === undefined) ? tn : tn.slice(1);             // upper voices that don't double the bass
        beats = beatsIn(sl);
        if (fig !== FIG_OOMPAH && fig !== FIG_HALFPAH && fig !== FIG_NOCTURNE && fig !== FIG_WALK) bassNote(sl.s0, bb, len, 1);
        var src = tn, Ls = L;
        if (fig === FIG_NOCTURNE) {                       // wide left-hand voicing: low root, 5th, 10th, 12th ...
            var r0 = ch.bass, i5 = rp[2] - rp[0], i3 = rp[1] - rp[0];
            src = [r0, r0 + i5, r0 + 12 + i3, r0 + 12 + i5];
            if (L > 3) src.push(r0 + 12 + (rp[3] - rp[0]));
            src = invertVoicing(src, ch.inv || 0);
            Ls = src.length;
        }
        if (fig === FIG_STATIC) {
            var strikes = [beats[0].s];
            for (bi = 1; bi < beats.length; bi++) if (rnd() < sv("strikeP", [0, 0.45, 0.85][level])) strikes.push(beats[bi].s);
            for (m = 0; m < strikes.length; m++) {
                var en = (m + 1 < strikes.length) ? strikes[m + 1] : sl.s1;
                block(strikes[m], tn, en - strikes[m], m ? 0.82 : 1, m === 0);
            }
        } else if (fig === FIG_HALFPAH) {
            var upH = up1, spH = -1, bdH = 1e9, dH;
            for (bi = 0; bi < beats.length; bi++) {
                if (beats[bi].s <= sl.s0) continue;
                dH = Math.abs(beats[bi].s - (sl.s0 + len / 2));
                if (dH < bdH) { bdH = dH; spH = beats[bi].s; }
            }
            if (spH < 0) { bassNote(sl.s0, bb, len, 1); block(sl.s0, upH, len, 0.85, false); }
            else { bassNote(sl.s0, bb, spH - sl.s0, 1); block(spH, upH, sl.s1 - spH, 0.95, false); }
        } else if (fig === FIG_WALK) {
            var wk = 0, wtn = [bb, ch.bass + (rp[1] - rp[0]), ch.bass + (rp[2] - rp[0]), ch.bass + (rp[1] - rp[0])];
            for (bi = 0; bi < beats.length; bi++) {
                b = beats[bi];
                if (bi % 2 === 0) bassNote(b.s, wtn[[0, 1, 2, 1][wk++ % 4]], b.len, 1);
                if (bi % 2 === 1 || beats.length === 1) block(b.s, up1, b.len, 0.7, false);
            }
        } else if (fig === FIG_OOMPAH) {
            var up = up1;
            for (bi = 0; bi < beats.length; bi++) {
                b = beats[bi];
                var ac = accAt(b.s * TPS);
                if (bi === 0 || ac >= 0.72) {
                    var bp = bb;
                    if (bi > 0 && L >= 3 && rnd() < sv("fifthP", 0.6)) {
                        bp = rp[2];
                        while (bp > 52) bp -= 12;
                        while (bp < 33) bp += 12;
                    }
                    bassNote(b.s, bp, (bi === 0) ? len : b.len, 1);
                } else {
                    block(b.s, up, b.len, 0.95, false);
                }
            }
        } else {
            kk = 0;
            for (bi = 0; bi < beats.length; bi++) {
                b = beats[bi];
                var ap = apFor(b.len, level);
                if (fig === FIG_ALBERTI) kk = 0;
                for (q = b.s, j = 0; q < b.s + b.len && q < sl.s1; q += ap, j++, kk++) {
                    var remain = sl.s1 - q, nt, vf = 1;
                    if (fig === FIG_REPEAT) {
                        block(q, L > 3 ? up1 : tn, Math.min(ap, remain), (j === 0) ? 0.8 : 0.68, false);
                        continue;
                    }
                    if (fig === FIG_OSTINATO) {                     // soft pendulum: root - 5th - root - 5th ... with a 3rd every 4th beat
                        var o5 = (tn[2 % L] - tn[0] === 6) ? tn[1] : tn[2 % L], oc = [tn[0], o5, tn[0], o5, tn[0], o5, tn[1] + 12, o5];
                        nt = oc[kk % 8];
                        if (thick && j === 0) addC(q, tn[0] + 12, mkVel(1, accAt(q * TPS), 0.6), Math.min(remain, ap * mult), 1, 0);
                    }
                    else if (fig === FIG_ARP) { m = kk % (L + 1); nt = (m < L) ? tn[m] : tn[0] + 12; }
                    else if (fig === FIG_ALBERTI) { nt = tn[ALB[j % 4] % L]; }
                    else if (fig === FIG_ROLL || fig === FIG_NOCTURNE) { var ud = upDown(Ls); nt = src[ud[kk % ud.length]]; }
                    else if (fig === FIG_PULSE) {                  // 3-note cycle that runs on across beats and bars
                        nt = tn[pulseCtr % Math.min(3, L)] + ((tn[0] < 52) ? 12 : 0);
                        vf = (pulseCtr % 3 === 0) ? 1.15 : 0.85; pulseCtr++;
                    }
                    else { var pt = PATTERNS[patIdx], pv = pt[kk % pt.length]; nt = tn[pv % L] + 12 * Math.floor(pv / L); }
                    while (nt > 84) nt -= 12;
                    addC(q, nt, mkVel(1, accAt(q * TPS), vf), Math.min(remain, ap * mult), 1, 0);
                }
                if (level >= 1 && bi > 0 && accAt(b.s * TPS) >= 0.72 && rnd() < 0.6)
                    bassNote(b.s, bb, Math.min(b.len * 2, sl.s1 - b.s), 0.8);
            }
        }
    }
}
var LONG_T = 8;                                  // ticks: notes this long (or on a strong beat) must be chord-compatible
function melPitch(idx) { return 48 + kEff() + degPitch(SCALES[P.scale].mel, idx); }
function fitIdx(idx) {
    var n = SCALES[P.scale].mel.length, g = 0;
    while (melPitch(idx) > MEL_HI && g++ < 12) idx -= n;
    while (melPitch(idx) < MEL_LO && g++ < 24) idx += n;
    return idx;
}
function nearestMelIdx(pitch) {
    var n = SCALES[P.scale].mel.length, best = 0, bd = 1e9, i, d;
    for (i = -2 * n; i <= 6 * n; i++) { d = Math.abs(melPitch(i) - pitch); if (d < bd) { bd = d; best = i; } }
    return best;
}
function centerIdx() { return nearestMelIdx(sv("center", 74)); }
function pentOK(pitch) {                         // pentatonic-only styles drop the 4th and 7th degree
    if (!sv("pent", 0)) return true;
    var mel = SCALES[P.scale].mel;
    if (mel.length !== 7) return true;
    var di = mel.indexOf((((pitch - 48 - kEff()) % 12) + 12) % 12);
    return !(di === 3 || di === 6);
}
function pentFix(idx, dir) {
    if (!sv("pent", 0) || SCALES[P.scale].mel.length !== 7) return idx;
    var r = ((idx % 7) + 7) % 7;
    return (r === 3 || r === 6) ? idx + (dir >= 0 ? 1 : -1) : idx;
}
function inMelScale(pitch) {
    var r = (((pitch - 48 - kEff()) % 12) + 12) % 12;
    return SCALES[P.scale].mel.indexOf(r) >= 0;
}
function snapToChord(idx, pcs) {
    var offs = (rnd() < 0.5) ? [0, 1, -1, 2, -2] : [0, -1, 1, -2, 2];
    for (var i = 0; i < offs.length; i++) {
        var c = idx + offs[i], pc = melPitch(c) % 12;
        if (pcs.indexOf(pc) >= 0 && melPitch(c) >= MEL_LO && melPitch(c) <= MEL_HI && pentOK(melPitch(c))) return c;
    }
    return idx;
}
function chordsOver(slots, t0, t1) {
    var out = [], i;
    for (i = 0; i < slots.length; i++)
        if (slots[i].s0 * TPS < t1 && slots[i].s1 * TPS > t0) out.push(slots[i].chord);
    return out.length ? out : [slots[0].chord];
}
function wideOK(pc, chs) {
    for (var i = 0; i < chs.length; i++) if (chs[i].wide.indexOf(pc) < 0) return false;
    return true;
}
function slotEndTick(slots, t) {
    for (var i = slots.length - 1; i >= 0; i--) if (t >= slots[i].s0 * TPS) return slots[i].s1 * TPS;
    return M.S * TPS;
}
function pitchOf(n) { return (n.abs !== undefined) ? n.abs : melPitch(n.idx); }
function findPitch(pitch, chs) {
    var sgn = (rnd() < 0.5) ? 1 : -1, pass, off, k, c;
    for (pass = 0; pass < 3; pass++) {
        for (off = 1; off <= (pass === 0 ? 5 : 7); off++) {
            for (k = 0; k < 2; k++) {
                c = pitch + off * (k === 0 ? sgn : -sgn);
                if (c < MEL_LO || c > MEL_HI) continue;
                if (pass === 0 && (!inMelScale(c) || !pentOK(c))) continue;
                if (pass === 1 && !pentOK(c)) continue;
                if (wideOK(c % 12, chs)) return c;
            }
        }
    }
    return null;
}
function isPassing(notes, i) {
    var n = notes[i], p = notes[i - 1], q = notes[i + 1];
    if (!p || !q) return false;
    return Math.abs(n.idx - p.idx) <= 1 && Math.abs(q.idx - n.idx) <= 1;
}
function harmonize(notes, slots) {
    for (var i = 0; i < notes.length; i++) {
        var n = notes[i], pitch = melPitch(n.idx);
        var chs = chordsOver(slots, n.t, n.t + n.d);
        var req = (n.d >= LONG_T) || accAt(n.t) >= 0.7 || !isPassing(notes, i);
        if (!req || wideOK(pitch % 12, chs)) continue;
        var found = findPitch(pitch, chs);
        if (found === null && chs.length > 1) {
            n.d = Math.max(1, slotEndTick(slots, n.t) - n.t);
            chs = chordsOver(slots, n.t, n.t + n.d);
            if (wideOK(pitch % 12, chs)) continue;
            found = findPitch(pitch, chs);
        }
        if (found !== null) { n.abs = found; n.idx = nearestMelIdx(found); }
    }
}
function crossFactor(p, c) {
    var a0 = M.acc[p], mx = a0, q;
    for (q = p + 1; q < p + c && q < M.S; q++) if (M.acc[q] > mx) mx = M.acc[q];
    var diff = mx - a0;
    if (diff <= 0.12) return 1;
    return 1 - (1 - P.syn * P.syn) * Math.min(1, diff / 0.35);
}
function durWeight(c, comp, dens, p) {
    var base = { 1: 0, 2: 0.5, 3: 0.08, 4: 2.0, 6: 1.2, 8: 1.0, 12: 0.25, 16: 0.1 };
    var w = base[c];
    if (c === 1) w = 1.4 * Math.pow(comp, 1.6) + 0.01;
    else if (c === 2) w += 1.2 * comp;
    else if (c === 3) w += comp * comp;
    else if (c === 4) w *= (1 - 0.3 * comp);
    else if (c >= 8) w *= (1 - 0.55 * comp);
    if (c <= 3) w *= (0.4 + 1.6 * dens) * sv("shortB", 1);
    else if (c === 4) w *= (0.9 + 0.3 * dens);
    else w *= (1.5 - 1.1 * dens) * sv("longB", 1);
    if (ST.dw && ST.dw[c] !== undefined) w *= ST.dw[c];
    return w * crossFactor(p, c);
}
function okAlign(c, p) {
    if (c <= 3) return true;
    if (c <= 6) return p % 2 === 0;
    return p % 4 === 0;
}
function tupletOptions(p, rem, comp) {
    var o = [];
    if (M.compound) {                                   // duplets across a dotted-quarter beat
        if (M.beatStarts.indexOf(p) >= 0 && rem >= 6) o.push({ span: 6, count: 2, w: 1 });
        return o;
    }
    if (p % 4 === 0 && rem >= 4) o.push({ span: 4, count: 3, w: 1.0 });                        // 8th triplets
    if (p % 8 === 0 && rem >= 8) o.push({ span: 8, count: 3, w: 0.35 });                       // quarter triplets
    if (p % 2 === 0 && rem >= 2 && comp > 0.4) o.push({ span: 2, count: 3, w: comp * 0.5 });   // 16th triplets
    if (p % 4 === 0 && rem >= 4 && comp > 0.5) o.push({ span: 4, count: 6, w: (comp - 0.4) * 0.5 }); // sextuplet
    return o;
}
function genRhythm() {
    var out = [], p = 0, S = M.S, comp = P.mComp, dens = c01(P.mDens + arcOff()), sy = P.syn * P.syn, lastEnd = 0;
    var pTrip = P.tripOn ? c01(P.trip * sv("tripM", 1)) * (0.6 + 0.4 * dens) : 0;   // triplet on/off + percentage
    var CANDS = [1, 2, 3, 4, 6, 8, 12, 16];
    while (p < S) {
        var rem = S - p, acc = M.acc[p], w = [], total = 0, i, c, wt;
        if (pTrip > 0 && rnd() < pTrip) {
            var opts = tupletOptions(p, rem, comp), ot = 0;
            for (i = 0; i < opts.length; i++) ot += opts[i].w;
            if (ot > 0) {
                var rt = rnd() * ot, chosen = opts[0];
                for (i = 0; i < opts.length; i++) { rt -= opts[i].w; if (rt <= 0) { chosen = opts[i]; break; } }
                var each = Math.round(chosen.span * TPS / chosen.count);
                for (i = 0; i < chosen.count; i++)
                    out.push({ t: p * TPS + i * each, d: each, tri: 1, first: (i === 0) ? 1 : 0 });
                p += chosen.span; lastEnd = p;
                continue;
            }
        }
        for (i = 0; i < CANDS.length; i++) {
            c = CANDS[i]; wt = 0;
            if (c <= rem && okAlign(c, p)) wt = durWeight(c, comp, dens, p);
            w.push(wt); total += wt;
        }
        var d = 1;
        if (total > 0) {
            var r = rnd() * total;
            for (i = 0; i < CANDS.length; i++) { r -= w[i]; if (r <= 0 && w[i] > 0) { d = CANDS[i]; break; } }
        }
        var restP = 0.78 * Math.pow(1 - dens, 1.3) * (1 - 0.55 * acc) + sv("restB", 0);
        if (dens < 0.15) restP += 0.1;
        if (acc <= 0.3 && p > lastEnd) restP += (1 - sy) * 0.45;      // don't slip in off the beat after a rest
        else if (acc >= 0.5) restP *= (0.55 + 0.45 * sy);             // fill the beats when syncopation is low
        if (p === 0) restP = (dens < 0.2) ? 0.35 : 0.06 * (1 - dens);
        restP = c01(restP);
        if (rnd() < restP) p += Math.max(1, Math.min(d, Math.max(2, 2 * M.u)));
        else { out.push({ t: p * TPS, d: d * TPS, tri: 0, first: 1 }); p += d; lastEnd = p; }
    }
    if (out.length === 0) out.push({ t: 0, d: Math.min(8, S) * TPS, tri: 0, first: 1 });
    return out;
}
function genPitches(rh, slots) {
    var n = SCALES[P.scale].mel.length, comp = P.mComp, cen = centerIdx();
    var idx = (mIdx === null) ? cen : mIdx;
    var notes = [], i, dbs = sv("dirBias", 0), grav = 1 - 0.85 * Math.abs(dbs);
    if (dbs !== 0 && phraseBar === 0) idx = fitIdx(cen - Math.round(dbs * n * 0.9));     // rising styles start low, falling styles start high
    for (i = 0; i < rh.length; i++) {
        var r = rh[i], acc = accAt(r.t), pcs = chordAt(slots, Math.floor(r.t / TPS)).pcs, size;
        if (r.tri && !r.first) {                          // inside a tuplet: run in one direction
            size = (rnd() < 0.8) ? 1 : 2;
        } else {
            var rv = rnd();
            var pLeap = (0.06 + 0.24 * comp) * sv("leapB", 1), pRep = 0.08 * (1 - 0.5 * comp) * sv("repB", 1);
            var pStep = Math.max(0.2, 0.52 - 0.12 * comp);
            if (rv < pRep) size = 0;
            else if (rv < pRep + pStep) size = 1;
            else if (rv < pRep + pStep + pLeap) size = (rnd() < 0.12 * comp) ? n : pick([3, 4, 4, 5]);
            else size = 2;
            if (rnd() > 0.6) dirState = -dirState;
            var db = sv("dirBias", 0);
            if (db !== 0 && rnd() < Math.abs(db)) dirState = (db > 0) ? 1 : -1;
        }
        var off = idx - cen;
        if (off > n && rnd() < 0.75 * grav) dirState = -1;
        if (off < -n && rnd() < 0.75 * grav) dirState = 1;
        var ni = idx + dirState * size;
        if (melPitch(ni) > MEL_HI || melPitch(ni) < MEL_LO) { dirState = -dirState; ni = fitIdx(idx + dirState * size); }
        idx = pentFix(ni, dirState);
        var strong = (acc >= 0.7 || r.d >= 18) && (!r.tri || r.first);
        if (strong && rnd() < 0.85 - 0.3 * comp) idx = snapToChord(idx, pcs);
        notes.push({ t: r.t, d: r.d, idx: idx, tri: r.tri, first: r.first });
    }
    mIdx = idx;
    return notes;
}
function graceFor(nt, slots) {
    var base = pitchOf(nt), chs = chordsOver(slots, nt.t - TPS, nt.t + nt.d), offs = [1, 2, -1, -2], i, c;
    if (rnd() < 0.5) offs = [-1, -2, 1, 2];
    for (i = 0; i < offs.length; i++) {
        c = base + offs[i];
        if (c >= MEL_LO && c <= MEL_HI && wideOK(c % 12, chs) && inMelScale(c) && pentOK(c)) return c;
    }
    return null;
}
function pentEnforce(notes, slots) {
    if (!sv("pent", 0)) return;
    for (var i = 0; i < notes.length; i++) {
        var n = notes[i], p = pitchOf(n);
        if (pentOK(p)) continue;
        var chs = chordsOver(slots, n.t, n.t + n.d), offs = [-1, 1, -2, 2], k, c;
        for (k = 0; k < offs.length; k++) {
            c = p + offs[k];
            if (c >= MEL_LO && c <= MEL_HI && pentOK(c) && wideOK(c % 12, chs)) { n.abs = c; n.idx = nearestMelIdx(c); break; }
        }
    }
}
function skipDownbeat(notes) {
    if (P.down >= 0.999 || notes.length === 0 || notes[0].t !== 0) return;
    if (rnd() < P.down) return;                                   // strike beat 1 as usual
    var i = 1;
    while (notes[0].tri && notes[i] && notes[i].tri && !notes[i].first) i++;   // drop a whole tuplet group
    var wantTie = rnd() < 0.6;
    if (i >= notes.length && !wantTie) return;                    // would leave the bar silent: keep it
    var removedEnd = notes[i - 1].t + notes[i - 1].d;
    var next = (i < notes.length) ? notes[i].t : M.S * TPS;
    notes.splice(0, i);
    if (wantTie) tieReq = { len: Math.max(1, Math.min(removedEnd, next)) };
}
function layMelody(slots) {
    var pb = phraseBar, comp = P.mComp, dens = c01(P.mDens + arcOff()), notes, i;
    var mb = sv("motifB", 0), reuse = false, rp = (P.rep <= 0.001) ? 0 : c01(P.rep + (mb - 0.35) * 0.5 * (1 - P.rep));
    if (motif && motif.S === M.S && mIdx !== null) {              // Motif Repeat dial: chance that a bar repeats the phrase's opening motive
        if (pb === 1) reuse = rnd() < rp;
        else if (pb === 2) reuse = rnd() < rp * (1 - 0.2 * (1 - P.rep));
        else if (pb === 3) reuse = rnd() < rp;
    }
    if (reuse) {
        var sh = (rnd() < P.rep * 0.6) ? 0 : ((pb === 3) ? pick([0, 0, -1, 1]) : pick([0, 0, 1, -1, 2, -2]));
        notes = [];
        for (i = 0; i < motif.notes.length; i++) {
            var m = motif.notes[i];
            var ix = pentFix(fitIdx(motif.base + sh + m.rel), sh);
            if (accAt(m.t) >= 0.7 && (!m.tri || m.first) && rnd() > P.rep * 0.8) ix = snapToChord(ix, chordAt(slots, Math.floor(m.t / TPS)).pcs);
            notes.push({ t: m.t, d: m.d, idx: ix, tri: m.tri, first: m.first });
        }
        if (notes.length > 1 && rnd() < comp * 0.5 * (1 - P.rep)) {
            var kk = Math.floor(rnd() * notes.length);
            if (!notes[kk].tri) notes[kk].idx = fitIdx(notes[kk].idx + pick([-1, 1]));
        }
        mIdx = notes[notes.length - 1].idx;
    } else {
        notes = genPitches(genRhythm(), slots);
    }
    if (pb === 0) {
        var rel = [];
        for (i = 0; i < notes.length; i++)
            rel.push({ t: notes[i].t, d: notes[i].d, rel: notes[i].idx - notes[0].idx, tri: notes[i].tri, first: notes[i].first });
        motif = { S: M.S, base: notes[0].idx, notes: rel };
    }
    if (pb === 3) {                      // cadence: settle on a chord tone, often long
        var last = notes[notes.length - 1], lc = chordAt(slots, Math.floor(last.t / TPS));
        if (!last.tri) {
            last.idx = snapToChord(last.idx, [lc.pcs[0]].concat(lc.pcs));
            if (rnd() < 0.7 - 0.3 * dens && !(reuse && rnd() < P.rep)) last.d = M.S * TPS - last.t;   // keep a repeated motive intact
        }
        mIdx = last.idx;
    }
    harmonize(notes, slots);             // keep long / strong notes inside the (wide) chord
    pentEnforce(notes, slots);
    mIdx = notes[notes.length - 1].idx;
    skipDownbeat(notes);                 // optionally leave beat 1 open (rest or tie)
    var grace = [], pg = Math.max(0, (comp - 0.35) * 0.35) + sv("ornB", 0) * 0.3;
    for (i = 0; i < notes.length; i++) {
        var nt = notes[i];
        if (pg > 0 && nt.t >= TPS && !nt.tri && rnd() < pg) {
            var prev = (i > 0) ? notes[i - 1] : null;
            var gp = graceFor(nt, slots);
            if (gp !== null) {
                if (!prev || prev.t + prev.d <= nt.t - TPS) grace.push({ t: nt.t - TPS, p: gp });
                else if (prev.d >= 2 * TPS && prev.t + prev.d === nt.t) { prev.d -= TPS; grace.push({ t: nt.t - TPS, p: gp }); }
            }
        }
    }
    var mst = sv("mstac", 1);
    for (i = 0; i < notes.length; i++) {
        var q = notes[i], acc = accAt(q.t), pq = pitchOf(q), qd = (mst !== 1 && !q.tri) ? Math.max(TPS, Math.round(q.d * mst)) : q.d;
        addNoteT(q.t, pq, mkVel(0, acc, (q.tri && !q.first) ? 0.88 : 1), qd, 0, 0);
        if (P.oct > 0 && rnd() < c01(P.oct * sv("octM", 1))) {                     // octave doubling (same pitch class -> always in the chord)
            var below = (P.octDir === 0) || (P.octDir === 2 && rnd() < 0.5);
            var op = below ? pq - 12 : pq + 12;
            if (op >= 36 && op <= 108) addNoteT(q.t, op, mkVel(0, acc, below ? 0.72 : 0.55), qd, 0, 0);
        }
        if (q.d >= 6 * TPS && rnd() < comp * dens * 0.55) {
            var hp = pq - pick([3, 4]);
            if (hp >= 58 && pentOK(hp) && wideOK(hp % 12, chordsOver(slots, q.t, q.t + q.d))) addNoteT(q.t, hp, mkVel(0, acc, 0.72), q.d, 0, 0);
        }
    }
    for (i = 0; i < grace.length; i++)
        if (grace[i].p <= MEL_HI + 2) addNoteT(grace[i].t, grace[i].p, mkVel(0, 0.3, 0.8), TPS, 0, 0);
}
function later(ms, fn) {
    var t = new Task(function () {
        fn();
        var i = tasks.indexOf(t);
        if (i >= 0) tasks.splice(i, 1);
    }, this);
    tasks.push(t);
    t.schedule(ms);
}
function stopNote(e) {
    if (e.sounding) emit(0, e.p, 0); else e.killed = true;
    e.sounding = false;
}
function setPedal(on) {
    if (on === pedalDown) return;
    pedalDown = on;
    emit(2, on ? 127 : 0, 64);                 // CC64 sustain pedal
    emit(1, "pedal", on ? 1 : 0);
}
function panicNotes() {
    var i;
    tieReq = null;
    setPedal(false);
    for (i = 0; i < active.length; i++) stopNote(active[i]);
    active = [];
    for (i = 0; i < tasks.length; i++) { try { tasks[i].cancel(); } catch (e) { } }
    tasks = [];
    emit(1, "clear");
}
function releaseDue() {
    for (var i = active.length - 1; i >= 0; i--) {
        if (active[i].offAbs <= absTick) { stopNote(active[i]); active.splice(i, 1); }
    }
}
function trigger(ev) {
    var i;
    for (i = active.length - 1; i >= 0; i--) {
        if (active[i].p === ev.p) { stopNote(active[i]); active.splice(i, 1); }
    }
    var entry = { p: ev.p, k: ev.k, offAbs: absTick + ev.d, sounding: false, killed: false };
    active.push(entry);
    var dly = 0;
    if (P.sync === 0) dly = (ev.ms || 0) + rnd() * P.human * 45 * (ev.k === 0 ? 1.2 : 1);
    if (dly < 2) {
        entry.sounding = true;
        emit(0, ev.p, ev.v);
    } else {
        later(dly, function () {
            if (!entry.killed) { entry.sounding = true; emit(0, ev.p, ev.v); }
        });
    }
    emit(1, "note", ev.k, ev.p, ev.v, ev.d / TPS);
}
function beginBar() {
    var i, T = M.S * TPS;
    barEvents = [];
    for (i = 0; i < T; i++) barEvents.push([]);
    var slots = makeSlots();
    lastSlots = slots;
    for (i = 0; i < slots.length; i++) {
        if (!slots[i].fresh) continue;
        var tc = slots[i].s0 * TPS;
        barEvents[tc].push({ lab: slots[i].chord.name });
        if (P.pedal) {                           // auto-pedal: lift as the chord changes, press just after the new chord sounds
            barEvents[tc].push({ ped: 0 });
            barEvents[Math.min(tc + 1, T - 1)].push({ ped: 1 });
        }
    }
    if (P.chords) layChords(slots);
    if (P.melody) layMelody(slots);
    emit(1, "bar", M.S, M.u);
    phraseBar = (phraseBar + 1) % 4;
    barNo++;
}
function applyTie() {
    if (!tieReq) return;
    var len = tieReq.len, chs, i, e;
    tieReq = null;
    if (!lastSlots) return;
    chs = chordsOver(lastSlots, 0, len);
    for (i = 0; i < active.length; i++) {
        e = active[i];
        if (e.k === 0 && !e.killed && e.offAbs === absTick && wideOK(e.p % 12, chs)) e.offAbs += len;
    }
}
function doTick() {
    if (tk === 0) { beginBar(); applyTie(); }
    releaseDue();
    if (tk % TPS === 0) emit(1, "step", tk / TPS);
    var evs = barEvents[tk] || [];
    for (var i = 0; i < evs.length; i++) {
        if (evs[i].lab !== undefined) emit(1, "chord", evs[i].lab);
        else if (evs[i].ped !== undefined) { if (P.pedal) setPedal(evs[i].ped === 1); }
        else trigger(evs[i]);
    }
    tk++;
    absTick++;
    if (tk >= M.S * TPS) tk = 0;
}
function resetPlayback() {
    panicNotes();
    tk = 0; phraseBar = 0; barNo = 0; prog = null; motif = null; mIdx = null;
    curChord = null; barsHeld = 0; chordIdx = 0; pulseCtr = 0; excQueue = []; lastRoot = -1; keyShift = 0;
    waiting = (P.sync === 1);
    barSigT = -1; lastTickT = 0;
}
function bang() {
    ensureWatchdog();
    if (!P.power) return;
    var now = Date.now();
    if (P.sync === 0) { doTick(); return; }
    var gap = lastTickT ? now - lastTickT : 99999;
    lastTickT = now;
    if (gap < 1000) refMs = refMs * 0.9 + gap * 0.1;
    if (gap > Math.max(800, refMs * 8) && !waiting) {      // transport was stopped / jumped
        panicNotes(); tk = 0; waiting = true; barSigT = -1;
    }
    if (waiting) {
        if (barSigT > 0 && now - barSigT <= 6) { waiting = false; barSigT = -1; tk = 0; doTick(); }
        return;
    }
    doTick();
}
function bar() {
    if (P.sync !== 1 || !P.power || !waiting) return;
    var now = Date.now();
    if (lastTickT && now - lastTickT <= 6) { waiting = false; barSigT = -1; tk = 0; doTick(); }
    else barSigT = now;
}
function watchdog() {
    if (P.sync === 1 && !waiting && lastTickT && (Date.now() - lastTickT) > Math.max(700, refMs * 8)) {
        panicNotes(); tk = 0; waiting = true; barSigT = -1;
    }
}
function sendInfo() { emit(1, "info", kEff(), P.scale, P.num, DENOMS[P.denIdx], P.style); }
function sendParams() { emit(1, "params", (P.cComp + P.mComp) / 2, (P.cDens + P.mDens) / 2); }
function meterChanged() { computeMeter(); resetPlayback(); sendInfo(); }
function newMaterial() { keyShift = 0; excQueue = []; lastRoot = -1; prog = null; motif = null; curChord = null; barsHeld = 0; chordIdx = 0; mIdx = null; }
function key(v) { P.key = clampn(Math.round(v), 0, 11); newMaterial(); sendInfo(); }
function scale(v) { P.scale = clampn(Math.round(v), 0, SCALES.length - 1); newMaterial(); sendInfo(); }
function num(v) { P.num = clampn(Math.round(v), 1, 16); meterChanged(); }
function den(v) { P.denIdx = clampn(Math.round(v), 0, 3); meterChanged(); }
function style(v) { P.style = clampn(Math.round(v), 0, STYLES.length - 1); ST = STYLES[P.style]; newMaterial(); sendInfo(); }
function sync(v) { P.sync = v ? 1 : 0; resetPlayback(); }
function power(v) {
    P.power = v ? 1 : 0;
    if (!P.power) { panicNotes(); tk = 0; waiting = true; }
    else resetPlayback();
}
function chords(v) { P.chords = v ? 1 : 0; }
function pedal(v) { P.pedal = v ? 1 : 0; if (!P.pedal) setPedal(false); }
function fig(v) { P.fig = clampn(Math.round(v), 0, 12); }
function degree(i, v) {
    i = clampn(Math.round(i), 0, 6); degOn[i] = v ? 1 : 0;
    if (!degOn[i] && curChord && curChord.deg === i) { curChord = null; barsHeld = 0; }
}
function harm(v) { P.harm = clampn(Math.round(v), 0, 5); curChord = null; barsHeld = 0; }
function wander(v) { P.wander = c01(v / 100); }
function ccomp(v) { P.cComp = c01(v / 100); sendParams(); }
function cdens(v) { P.cDens = c01(v / 100); sendParams(); }
function clvl(v) { P.cLvl = c01(v / 100); }
function melody(v) { P.melody = v ? 1 : 0; }
function mcomp(v) { P.mComp = c01(v / 100); motif = null; sendParams(); }
function mdens(v) { P.mDens = c01(v / 100); motif = null; sendParams(); }
function triplets(v) { P.tripOn = v ? 1 : 0; motif = null; }
function trip(v) { P.trip = c01(v / 100); motif = null; }
function octave(v) { P.oct = c01(v / 100); }
function octdir(v) { P.octDir = clampn(Math.round(v), 0, 2); }
function inversion(v) { P.inv = c01(v / 100); }
function motifrep(v) { P.rep = c01(v / 100); }
function downbeat(v) { P.down = c01(v / 100); }
function syncop(v) { P.syn = c01(v / 100); motif = null; }
function mlvl(v) { P.mLvl = c01(v / 100); }
function humanize(v) { P.human = c01(v / 100); }
function velocity(v) { P.vel = c01(v / 100); }
function regen() { rngState = (Date.now() % 4294967296) || 1; newMaterial(); phraseBar = 0; }
function reset() { resetPlayback(); }
function panic() { panicNotes(); }
function seed(v) { rngState = (Math.abs(Math.floor(v)) % 4294967296) || 1; newMaterial(); phraseBar = 0; }
function ensureWatchdog() {
    if (wd === null) { wd = new Task(watchdog, this); wd.interval = 200; wd.repeat(); }
}
function loadbang() {
    computeMeter();
    ensureWatchdog();
    var t = new Task(function () { sendInfo(); sendParams(); }, this);      // send the startup status a moment after loading
    t.schedule(150);
}
computeMeter();                 // pure calculation only - safe at load time
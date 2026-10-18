// Blob Garden engine - analysis + variation generator (Max js / v8, ES5 only).
// Variations live in RAM (the variations buffer). The set stores seed, character and the original sample itself.
autowatch = 1;
inlets = 1;
outlets = 5; // 0: ui messages, 1: status text, 2: -> buffer~ src, 3: -> pattr state, 4: character description

var VARS = jsarguments[1] || "bgvars";
var SRC  = jsarguments[2] || "bgsrc";
var SLOTN = jsarguments[3] || "bgslot";
var ROOT = 60;
var CHARS = ["Mixed", "Repitched", "Collision", "Tension", "Glitch", "Synth", "Metal"];
var DESC = [
  "Every voice in the garden, drawn at random. Nothing here repeats.",
  "One voice, many ages. Each key bends the sound across time.",
  "Echoes that strike one another and keep on falling.",
  "A held breath before the strike. Rising, never resolving.",
  "The signal stutters, as if something were watching.",
  "The sample dreams in oscillators, tuned to a note it never sang.",
  "Cold alloy struck in the dark. The echo remembers its shape."];
var vb = null, sb = null, slb = null;
var st = { char: 0, name: "", seed: 1, sr: 44100, srcPath: "", restoring: false, pending: false, preN: 0 };
var orig = null, A = null, SF = 88200, done = [], order = [], genTask = null, pollTask = null, expTask = null;

function getBufs() { if (!vb) { vb = new Buffer(VARS); sb = new Buffer(SRC); slb = new Buffer(SLOTN); } }
function status(t) { outlet(1, "set", t); }
function zeros(n) { var a = [], i; for (i = 0; i < n; i++) a.push(0); return a; }
function clamp(x, a, b) { return x < a ? a : (x > b ? b : x); }
function pad3(n) { return (n < 10 ? "00" : (n < 100 ? "0" : "")) + n; }
function tanh(x) { if (x > 20) return 1; if (x < -20) return -1; var e = Math.exp(2 * x); return (e - 1) / (e + 1); }
function describe() { outlet(4, "set", DESC[st.char]); }
function bang() { describe(); post("Blob Garden engine alive. buffers: " + VARS + " / " + SRC + " / " + SLOTN + "\n"); }
function sampleRate() {
  getBufs();
  var vn = vb.framecount(), vms = vb.length();
  if (!vn || !vms) return 0;
  st.sr = vn / (vms / 1000); SF = Math.floor(2 * st.sr); return st.sr;
}

// ---------- loading ----------
function loadfile() {
  var a = arrayfromargs(arguments);
  if (a[0] == "drop") a.shift();
  var p = String(a.join(" ")).replace(/^"|"$/g, "");
  if (!p) return;
  var s = p.replace(/\\/g, "/"), file = s.substring(s.lastIndexOf("/") + 1);
  st.name = file.replace(/\.[^.]*$/, "").replace(/[^A-Za-z0-9_\-]/g, "_");
  st.srcPath = p; st.restoring = false;
  beginLoad(p);
  status("Loading " + file + " ...");
}
function beginLoad(path) {
  getBufs();
  st.pending = true; st.preN = sb.framecount();
  outlet(2, "replace", path);
  if (pollTask) pollTask.cancel();
  var stable = 0, last = -1;
  pollTask = new Task(function () {
    if (!st.pending) { pollTask.cancel(); return; }
    var n = sb.framecount();
    if (n > 0 && n != st.preN) {
      if (n == last) stable++; else stable = 0;
      last = n;
      if (stable >= 2) { pollTask.cancel(); loaded(); }
    }
  }, this);
  pollTask.interval = 150; pollTask.repeat();
}
function loaded() {
  if (!st.pending) return;
  st.pending = false;
  if (pollTask) pollTask.cancel();
  getBufs();
  var n = sb.framecount(), ch = Math.max(1, sb.channelcount()), ms = sb.length();
  post("Blob Garden loaded: src frames " + n + " ch " + ch + "\n");
  if (n < 2 || !ms || !sampleRate()) { status("Could not read sample or buffers (check Max console)"); return; }
  var srcSr = n / (ms / 1000), take = Math.min(n, Math.floor(2 * srcSr + 0.5)), i, c, mono = [];
  for (i = 0; i < take; i++) mono.push(0);
  for (c = 1; c <= ch; c++) { var d = sb.peek(c, 0, take); for (i = 0; i < take; i++) mono[i] += d[i] / ch; }
  ingest(mono, srcSr, n > take);
}
function ingest(mono, srcSr, cut) {
  if (Math.abs(srcSr - st.sr) > 1) mono = resample(mono, srcSr / st.sr);
  if (mono.length > SF) mono.length = SF;
  var pk = 0, i;
  for (i = 0; i < mono.length; i++) { var a = Math.abs(mono[i]); if (a > pk) pk = a; }
  var g = pk > 1e-9 ? 0.89 / pk : 1;
  for (i = 0; i < mono.length; i++) mono[i] *= g;
  if (cut && !st.restoring) fade(mono, 0, Math.floor(0.01 * st.sr));
  orig = mono; A = analyse(orig, st.sr);
  A.label = A.col + " " + A.shape + " / " + A.tone;
  status(A.label + " | centroid " + Math.round(A.centroid) + " Hz | onset " + Math.round(A.onsetMs) + " ms" + (cut ? " | cut to 2 s" : ""));
  startGen();
}
function character(c) {
  c = clamp(Math.floor(Number(c) || 0), 0, CHARS.length - 1);
  if (c == st.char) return;
  st.char = c; describe();
  if (orig && !st.pending) { st.restoring = false; startGen(); }
}
function regen() { if (!orig) { status("Load a sample first"); return; } st.seed++; st.restoring = false; startGen(); }

// ---------- generation (RAM only), nearest-to-C3 first ----------
function sendOrig() {
  var o = stats(orig);
  outlet(0, "reset");
  outlet(0, "orig", o.bright, o.rms, A.flat, A.bands[0], A.bands[1], A.bands[2], A.bands[3], A.bands[4], A.bands[5], A.bands[6], A.bands[7]);
}
function startGen() {
  describe();
  if (genTask) genTask.cancel();
  done = []; wStore = []; order = [];
  for (var d = 0; d <= 67; d++) { if (ROOT - d >= 0) order.push(ROOT - d); if (d > 0 && ROOT + d <= 127) order.push(ROOT + d); }
  sendOrig();
  genTask = new Task(genStep, this); genTask.interval = 25; genTask.repeat();
}
function genOne(n) {
  var y = (n == ROOT) ? orig : makeVar(n), out = zeros(SF), i;
  for (i = 0; i < SF; i++) out[i] = i < y.length ? y[i] : 0;
  vb.poke(1, n * SF, out);
  done[n] = true;
  if (n != ROOT) { var s = stats(y); outlet(0, "blob", n, s.bright, s.rms, s.zcr, ((st.seed * 31 + n * 17) % 100) / 100, lastCl, lastL); }
  var cnt = 0; for (i = 0; i < 128; i++) if (done[i]) cnt++;
  outlet(0, "progress", cnt / 128);
}
function genStep() {
  for (var k = 0; k < order.length; k++) if (!done[order[k]]) { genOne(order[k]); return; }
  genTask.cancel(); finish();
}
// a key pressed before its variation exists is generated on the spot
function note(p, v) { if (v > 0 && orig && vb && !st.pending && !done[p] && p >= 0 && p < 128) genOne(p); }

function reCluster() {
  var k, n, mean = [0, 0, 0, 0, 0, 0], sd = [0, 0, 0, 0, 0, 0], cnt = 0;
  for (n = 0; n < 128; n++) if (wStore[n]) { cnt++; for (k = 0; k < 6; k++) mean[k] += wStore[n][k]; }
  if (!cnt) return;
  for (k = 0; k < 6; k++) mean[k] /= cnt;
  for (n = 0; n < 128; n++) if (wStore[n]) for (k = 0; k < 6; k++) sd[k] += Math.pow(wStore[n][k] - mean[k], 2);
  for (k = 0; k < 6; k++) sd[k] = Math.sqrt(sd[k] / cnt) + 0.08;
  for (n = 0; n < 128; n++) if (wStore[n]) {
    var best = 0, bz = -1e9;
    for (k = 0; k < 6; k++) { var z = (wStore[n][k] - mean[k]) / sd[k]; if (z > bz) { bz = z; best = k; } }
    outlet(0, "cluster", n, best);
  }
}
function finish() {
  reCluster();
  outlet(0, "progress", 1);
  status("Ready: 128 sounds in RAM | " + CHARS[st.char] + " | " + A.label);
  if (!st.restoring) saveState();
  st.restoring = false;
}

// ---------- state saved with the Live set: seed, character and the original sample (16-bit, base64 chunks) ----------
var B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
function encodePCM(x) {
  var b = [], i, s = [];
  for (i = 0; i < x.length; i++) { var v = Math.round(clamp(x[i], -1, 1) * 32767); if (v < 0) v += 65536; b.push(v & 255); b.push(v >> 8); }
  for (i = 0; i < b.length; i += 3) {
    var b0 = b[i], b1 = i + 1 < b.length ? b[i + 1] : 0, b2 = i + 2 < b.length ? b[i + 2] : 0;
    s.push(B64.charAt(b0 >> 2) + B64.charAt(((b0 & 3) << 4) | (b1 >> 4)) + B64.charAt(((b1 & 15) << 2) | (b2 >> 6)) + B64.charAt(b2 & 63));
  }
  return s.join("");
}
function decodePCM(str, n) {
  var map = {}, i, b = [];
  for (i = 0; i < 64; i++) map[B64.charAt(i)] = i;
  for (i = 0; i + 3 < str.length; i += 4) {
    var c0 = map[str.charAt(i)], c1 = map[str.charAt(i + 1)], c2 = map[str.charAt(i + 2)], c3 = map[str.charAt(i + 3)];
    if (c0 === undefined || c1 === undefined || c2 === undefined || c3 === undefined) return null;
    b.push((c0 << 2) | (c1 >> 4)); b.push(((c1 & 15) << 4) | (c2 >> 2)); b.push(((c2 & 3) << 6) | c3);
  }
  if (b.length < 2 * n) return null;
  var x = [];
  for (i = 0; i < n; i++) { var v = b[2 * i] | (b[2 * i + 1] << 8); if (v >= 32768) v -= 65536; x.push(v / 32767); }
  return x;
}
function saveState() {
  if (!orig) return;
  var str = encodePCM(orig), msg = [st.seed, st.char, st.sr, orig.length, st.name, st.srcPath ? st.srcPath : "-"], i;
  for (i = 0; i < str.length; i += 2000) msg.push("A" + str.substring(i, i + 2000));   // "A" keeps a chunk from ever parsing as a number
  outlet(3, msg);
}
function restore() {
  var a = arrayfromargs(arguments);
  if (a.length < 7) return;
  var seed = Number(a[0]) || 1, ch = clamp(Math.floor(Number(a[1]) || 0), 0, CHARS.length - 1), sr = Number(a[2]) || 44100, len = Number(a[3]) || 0;
  var name = String(a[4]), path = String(a[5]), i, str = "";
  if (orig && name == st.name && seed == st.seed && ch == st.char) return;
  if (!sampleRate()) { status("Variation buffer not ready"); return; }
  for (i = 6; i < a.length; i++) str += String(a[i]).substring(1);
  st.seed = seed; st.char = ch; describe(); st.name = name; st.srcPath = path == "-" ? "" : path;
  var data = decodePCM(str, len);
  if (data) { st.restoring = true; status("Restoring " + name + " from the set ..."); ingest(data, sr, false); }
  else if (st.srcPath) { status("Embedded audio unreadable - reloading " + st.srcPath); beginLoad(st.srcPath); }
  else status("Could not restore the sample - drop it again");
}

// ---------- optional export of all 128 sounds as wav files into a folder you pick ----------
function exportfiles() {
  var p = arrayfromargs(arguments).join(" ").replace(/\\/g, "/").replace(/\/+$/, "");
  if (!p) return;
  if (!orig) { status("Nothing to export yet"); return; }
  var cnt = 0, i; for (i = 0; i < 128; i++) if (done[i]) cnt++;
  if (cnt < 128) { status("Still generating (" + cnt + "/128) - try again in a moment"); return; }
  getBufs();
  var idx = 0;
  if (expTask) expTask.cancel();
  expTask = new Task(function () {
    if (idx > 127) { expTask.cancel(); status("Exported 128 wav files to " + p); return; }
    var n = idx++, d = vb.peek(1, n * SF, SF), z = zeros(SF), k;
    for (k = 0; k < SF; k++) z[k] = d[k];
    slb.poke(1, 0, z);
    slb.send("writewave", p + "/" + st.name + "_n" + pad3(n) + ".wav");
    if (n % 8 == 0) status("Exporting " + (n + 1) + "/128 to " + p);
  }, this);
  expTask.interval = 40; expTask.repeat();
}

// ---------- DSP helpers ----------
function fade(x, inN, outN) {
  var i, n = x.length;
  for (i = 0; i < inN && i < n; i++) x[i] *= i / inN;
  for (i = 0; i < outN && i < n; i++) x[n - 1 - i] *= i / outN;
}
function resample(x, rate) {
  var n = Math.max(1, Math.min(SF, Math.floor(x.length / rate))), y = zeros(n), i;
  for (i = 0; i < n; i++) {
    var p = i * rate, j = Math.floor(p), f = p - j;
    var a = x[j], b = j + 1 < x.length ? x[j + 1] : 0;
    y[i] = a + (b - a) * f;
  }
  return y;
}
function biquad(x, type, fc, Q, sr) {
  var w = 2 * Math.PI * fc / sr, cw = Math.cos(w), sw = Math.sin(w), al = sw / (2 * Q), b0, b1, b2;
  if (type == "lp") { b0 = (1 - cw) / 2; b1 = 1 - cw; b2 = b0; }
  else if (type == "hp") { b0 = (1 + cw) / 2; b1 = -(1 + cw); b2 = b0; }
  else { b0 = al; b1 = 0; b2 = -al; }
  var a0 = 1 + al, a1 = -2 * cw, a2 = 1 - al;
  b0 /= a0; b1 /= a0; b2 /= a0; a1 /= a0; a2 /= a0;
  var y = zeros(x.length), x1 = 0, x2 = 0, y1 = 0, y2 = 0, i;
  for (i = 0; i < x.length; i++) {
    var v = b0 * x[i] + b1 * x1 + b2 * x2 - a1 * y1 - a2 * y2;
    x2 = x1; x1 = x[i]; y2 = y1; y1 = v; y[i] = v;
  }
  return y;
}
function fft(re, im) {
  var n = re.length, i, j = 0, k, m, t;
  for (i = 0; i < n - 1; i++) {
    if (i < j) { t = re[i]; re[i] = re[j]; re[j] = t; t = im[i]; im[i] = im[j]; im[j] = t; }
    k = n >> 1; while (k <= j) { j -= k; k >>= 1; } j += k;
  }
  for (m = 1; m < n; m <<= 1) {
    var th = -Math.PI / m, wr = Math.cos(th), wi = Math.sin(th);
    for (k = 0; k < n; k += m << 1) {
      var cr = 1, ci = 0;
      for (j = 0; j < m; j++) {
        var a = k + j, b = a + m;
        var tr = cr * re[b] - ci * im[b], ti = cr * im[b] + ci * re[b];
        re[b] = re[a] - tr; im[b] = im[a] - ti; re[a] += tr; im[a] += ti;
        var ncr = cr * wr - ci * wi; ci = cr * wi + ci * wr; cr = ncr;
      }
    }
  }
}
function stats(y) {
  var n = y.length, s = 0, d = 0, z = 0, prev = 0, i;
  for (i = 0; i < n; i++) {
    var v = y[i], df = v - prev; s += v * v; d += df * df;
    if ((v >= 0) != (prev >= 0)) z++;
    prev = v;
  }
  var rms = Math.sqrt(s / Math.max(1, n)), q = Math.sqrt(d / (s + 1e-12));
  return { rms: rms, bright: clamp(Math.log(q * 100 + 1) / Math.log(201), 0, 1), zcr: clamp(z / Math.max(1, n) * 2, 0, 1) };
}
function envFollow(x, sr) {
  var e = zeros(x.length), v = 0, a = Math.exp(-1 / (0.002 * sr)), r = Math.exp(-1 / (0.03 * sr)), i;
  for (i = 0; i < x.length; i++) { var m = Math.abs(x[i]); v = m > v ? a * v + (1 - a) * m : r * v + (1 - r) * m; e[i] = v * 1.6; }
  return e;
}

// ---------- analysis: onset, envelope, spectrum, centroid, character ----------
function analyse(x, sr) {
  var N = x.length, hop = Math.max(1, Math.floor(sr * 0.005)), env = [], pk = 0, i, j, k;
  for (i = 0; i + hop <= N; i += hop) {
    var s = 0; for (j = i; j < i + hop; j++) s += x[j] * x[j];
    var e = Math.sqrt(s / hop); env.push(e); if (e > pk) pk = e;
  }
  var onset = 0, pkIdx = 0, decay;
  for (k = 0; k < env.length; k++) if (env[k] > pk * 0.1) { onset = k; break; }
  for (k = onset; k < env.length; k++) if (env[k] >= pk * 0.98) { pkIdx = k; break; }
  decay = env.length - pkIdx;
  for (k = pkIdx; k < env.length; k++) if (env[k] < pk * 0.1) { decay = k - pkIdx; break; }
  var FN = 2048, H = FN / 2, win = [], mag = [], re = [], im = [], f, b;
  for (i = 0; i < FN; i++) win.push(0.5 - 0.5 * Math.cos(2 * Math.PI * i / (FN - 1)));
  for (b = 0; b < H; b++) mag.push(0);
  var start = onset * hop, frames = 0;
  for (f = 0; f < 10; f++) {
    var s0 = start + f * H;
    if (f > 0 && s0 + FN > N) break;
    for (i = 0; i < FN; i++) { re[i] = (s0 + i < N ? x[s0 + i] : 0) * win[i]; im[i] = 0; }
    fft(re, im);
    for (b = 0; b < H; b++) mag[b] += Math.sqrt(re[b] * re[b] + im[b] * im[b]);
    frames++;
  }
  var bin = sr / FN, tot = 0, cs = 0, lg = 0, cnt = 0;
  for (b = 1; b < H; b++) { tot += mag[b]; cs += mag[b] * b * bin; if (b * bin < 16000) { lg += Math.log(mag[b] + 1e-9); cnt++; } }
  var centroid = tot > 0 ? cs / tot : 0, f0 = 0, fm = 0;
  for (b = Math.floor(40 / bin); b < Math.floor(2000 / bin); b++) if (mag[b] > fm) { fm = mag[b]; f0 = b * bin; }
  var mean = tot / (H - 1);
  var flat = clamp(Math.exp(lg / Math.max(1, cnt)) / (mean + 1e-9), 0, 1);
  var edges = [0, 150, 300, 600, 1200, 2400, 4800, 9600, sr / 2], bands = [], emax = 1e-12;
  for (k = 0; k < 8; k++) {
    var e2 = 0; for (b = 1; b < H; b++) { var fr = b * bin; if (fr >= edges[k] && fr < edges[k + 1]) e2 += mag[b] * mag[b]; }
    e2 /= Math.max(1, (edges[k + 1] - edges[k]) / bin);   // per-bin energy, so wide bands don't dominate
    bands.push(e2); if (e2 > emax) emax = e2;
  }
  for (k = 0; k < 8; k++) bands[k] = Math.pow(bands[k] / emax, 0.25);
  var onsetMs = onset * 5, attackMs = (pkIdx - onset) * 5, decayMs = decay * 5;
  return {
    centroid: centroid, f0: f0, flat: flat, bands: bands, onsetMs: onsetMs, attackMs: attackMs, decayMs: decayMs,
    tone: flat < 0.08 ? "tonal" : (flat > 0.3 ? "noisy" : "mixed"),
    shape: (attackMs < 15 && decayMs < 400) ? "percussive" : (attackMs > 80 ? "swelling" : "sustained"),
    col: centroid > 4000 ? "bright" : (centroid < 900 ? "dark" : "mid"),
    env: envFollow(x, sr), label: ""
  };
}

// ---------- variation generator (deterministic per seed + note + character) ----------
var lastCl = 0, lastL = 0, wStore = [];
function rng(seed, n) {
  var s = (seed * 7919 + n * 104729 + 12345) % 4294967296;
  var f = function () { s = (s * 1664525 + 1013904223) % 4294967296; return s / 4294967296; };
  f(); f(); f();
  return f;
}
function peak(y) { var p = 1e-9, i; for (i = 0; i < y.length; i++) { var a = Math.abs(y[i]); if (a > p) p = a; } return p; }
function extend(y, n) { var m = Math.min(SF, y.length + n); while (y.length < m) y.push(0); return y; }
// each fx adds weight to X.w[cluster]: 0 pitch, 1 tone, 2 time, 3 grit, 4 mod, 5 texture
function fxPitch(y, X, semi) { X.w[0] += 0.2 + Math.min(1, Math.abs(semi) / 12); return resample(y, Math.pow(2, semi / 12)); }
function fxFilter(y, X, type, fc, q, twice) {
  fc = clamp(fc, 60, X.sr * 0.42);
  X.w[1] += 0.25 + Math.min(1, Math.abs(Math.log(fc / X.c) / Math.LN2) / 3);
  y = biquad(y, type, fc, q, X.sr);
  if (twice) y = biquad(y, type, fc, 0.707, X.sr);
  return y;
}
function fxSat(y, X, drive) { var nr = tanh(drive), i; for (i = 0; i < y.length; i++) y[i] = tanh(y[i] * drive) / nr; X.w[3] += Math.min(1, drive / 10); return y; }
function fxCrush(y, X, bits, hold) {
  var stp = 2 / Math.pow(2, bits), hv = 0, i;
  for (i = 0; i < y.length; i++) { if (i % hold == 0) hv = Math.round(y[i] / stp) * stp; y[i] = hv; }
  X.w[3] += (14 - bits) / 10 + hold / 14; return y;
}
function fxRing(y, X, f, mix) {
  for (var i = 0; i < y.length; i++) y[i] = y[i] * (1 - mix) + y[i] * Math.sin(2 * Math.PI * f * i / X.sr) * mix;
  X.w[4] += mix; return y;
}
function fxComb(y, X, sec, fb) {
  var D = Math.max(2, Math.floor(X.sr * sec)), i;
  for (i = D; i < y.length; i++) y[i] += fb * y[i - D];
  X.w[4] += fb * 0.8; return y;
}
function fxNoise(y, X, mix, fc, q) {
  var nz = [], m = y.length, i;
  for (i = 0; i < m; i++) nz.push((X.r() * 2 - 1) * (A.env[Math.min(i, A.env.length - 1)] || 0));
  nz = biquad(nz, "bp", clamp(fc, 80, X.sr * 0.42), q, X.sr);
  var k = peak(y) / peak(nz);
  for (i = 0; i < m; i++) y[i] = y[i] * (1 - mix) + nz[i] * k * mix;
  X.w[5] += mix; return y;
}
function fxDecay(y, X, tau) { for (var i = 0; i < y.length; i++) y[i] *= Math.exp(-i / (tau * X.sr)); X.w[2] += 0.3; return y; }
function fxAttack(y, X, sec) {
  var n = Math.max(1, Math.floor(sec * X.sr)), i;
  for (i = 0; i < y.length && i < n; i++) { var g = i / n; y[i] *= g * g; }
  X.w[2] += 0.2; return y;
}
function fxStretch(y, X, f) {
  var G = Math.floor(0.06 * X.sr), Ho = G >> 1, N = Math.min(SF, Math.floor(y.length * f)), out = zeros(N + G), win = [], i, k;
  for (k = 0; k < G; k++) win.push(0.5 - 0.5 * Math.cos(2 * Math.PI * k / G));
  for (i = 0; i < N; i += Ho) {
    var src = Math.floor(i / f + (X.r() - 0.5) * G * 0.3);
    src = clamp(src, 0, Math.max(0, y.length - 1));
    for (k = 0; k < G && src + k < y.length; k++) out[i + k] += y[src + k] * win[k];
  }
  out.length = N; X.w[2] += 0.5 + Math.min(0.5, Math.log(f) / 3); return out;
}
function fxReverb(y, X, amt, fbo) {
  var sr = X.sr, dry = y.slice(0), n, i, c, out;
  y = extend(y, Math.floor(0.9 * sr)); n = y.length; out = zeros(n);
  var dl = [0.0297, 0.0371, 0.0411, 0.0437], fb = fbo || (0.72 + 0.12 * X.r());
  for (c = 0; c < 4; c++) {
    var D = Math.floor(dl[c] * sr), buf = zeros(D), p = 0;
    for (i = 0; i < n; i++) { var v = (i < dry.length ? dry[i] : 0) + buf[p] * fb; buf[p] = v; p = (p + 1) % D; out[i] += v * 0.25; }
  }
  var ap = [0.005, 0.0017];
  for (c = 0; c < 2; c++) {
    var D2 = Math.floor(ap[c] * sr), b2 = zeros(D2), q = 0;
    for (i = 0; i < n; i++) { var x = out[i], bo = b2[q], w = x + bo * 0.5; b2[q] = w; out[i] = bo - w * 0.5 + 0 * x; q = (q + 1) % D2; }
  }
  var k = peak(dry) / peak(out);
  for (i = 0; i < n; i++) y[i] = (i < dry.length ? dry[i] * (1 - amt * 0.6) : 0) + out[i] * k * amt;
  X.w[5] += amt; return y;
}
function fxChorus(y, X, d, mix) {
  var a = resample(y, Math.pow(2, d / 12)), b = resample(y, Math.pow(2, -d / 12)), n = y.length, i, o = zeros(n);
  for (i = 0; i < n; i++) o[i] = y[i] * (1 - mix * 0.66) + ((i < a.length ? a[i] : 0) + (i < b.length ? b[i] : 0)) * mix * 0.33;
  X.w[4] += mix * 0.8; return o;
}
function fxSweep(y, X, r0, r1) {
  var out = [], p = 0, len = y.length;
  while (p < len - 1 && out.length < SF) {
    var rate = Math.max(0.05, r0 + (r1 - r0) * Math.min(1, p / len)), j = Math.floor(p), f = p - j;
    out.push(y[j] + (y[j + 1] - y[j]) * f); p += rate;
  }
  X.w[0] += 0.4 + Math.min(1, Math.abs(Math.log(r1 / r0) / Math.LN2)); return out.length ? out : [0];
}
function fxTrem(y, X, f0, f1, depth) {
  var ph = 0, n = y.length, i;
  for (i = 0; i < n; i++) { ph += 2 * Math.PI * (f0 + (f1 - f0) * i / n) / X.sr; y[i] *= 1 - depth * (0.5 + 0.5 * Math.sin(ph)); }
  X.w[4] += depth * 0.8; return y;
}
function fxVib(y, X, hz, depthSec) {
  var n = y.length, o = zeros(n), D = depthSec * X.sr, i;
  for (i = 0; i < n; i++) {
    var p = clamp(i + D * Math.sin(2 * Math.PI * hz * i / X.sr), 0, n - 2), j = Math.floor(p), f = p - j;
    o[i] = y[j] + (y[j + 1] - y[j]) * f;
  }
  X.w[4] += 0.5; return o;
}
function fxGate(y, X, sl, p) {
  var i, j, n = y.length;
  for (i = 0; i < n; i += sl) if (X.r() < p && i > 0) for (j = i; j < i + sl && j < n; j++) y[j] *= Math.max(0, 1 - Math.min(j - i, i + sl - j) / 48);
  X.w[2] += p; return y;
}
function fxGlitch(y, X, amt) {
  var sr = X.sr, out = [], len = y.length, j, k, rates = [0.5, 0.75, 1.5, 2];
  while (out.length < len) {
    var sl = Math.floor(sr * (0.005 + 0.04 * X.r())), src = Math.floor(X.r() * Math.max(1, len - sl)), seg, firstSlice = out.length == 0;
    if (firstSlice) src = 0;
    seg = y.slice(src, src + sl);
    if (X.r() < amt * 0.4 && !firstSlice) seg.reverse();
    if (X.r() < amt * 0.5 && !firstSlice) seg = resample(seg, rates[Math.floor(X.r() * 4)]);
    if (X.r() < 0.2 * amt && !firstSlice) seg = zeros(seg.length);
    var rep = 1 + Math.floor(X.r() * amt * 5);
    for (k = 0; k < rep; k++) for (j = 0; j < seg.length; j++) out.push(seg[j] * Math.min(1, j / 24, (seg.length - j) / 24));
  }
  out.length = len; X.w[2] += 0.9; return out;
}
function fxSynth(y, X, mix, f, wave, voices) {
  var n = y.length, s = zeros(n), ph = [], dt = [], v, i;
  for (v = 0; v < voices; v++) { ph.push(X.r()); dt.push(f * Math.pow(2, (v - (voices - 1) / 2) * 0.15 / 12)); }
  for (i = 0; i < n; i++) {
    var e = A.env[Math.min(i, A.env.length - 1)] || 0, sum = 0;
    for (v = 0; v < voices; v++) {
      ph[v] += dt[v] / X.sr; if (ph[v] >= 1) ph[v] -= 1;
      sum += wave == 0 ? 2 * ph[v] - 1 : (wave == 1 ? (ph[v] < 0.5 ? 1 : -1) : (ph[v] < 0.25 ? 1 : -1));
    }
    s[i] = sum / voices * e;
  }
  var k = peak(y) / peak(s);
  for (i = 0; i < n; i++) y[i] = y[i] * (1 - mix) + s[i] * k * mix;
  X.w[5] += mix; return y;
}

function trimLead(y, X) {
  var on = Math.floor(A.onsetMs / 1000 * X.sr) - Math.floor(0.002 * X.sr);
  return on > 0 && on < y.length - 100 ? y.slice(on) : y;
}
function fxTransient(y, X, amt, ms) {
  var tau = Math.max(1, X.sr * ms / 1000), n = Math.min(y.length, Math.floor(tau * 5)), i;
  for (i = 0; i < n; i++) y[i] *= 1 + amt * Math.exp(-i / tau);
  var cl = Math.floor(X.sr * 0.003), pk = peak(y);
  for (i = 0; i < cl && i < y.length; i++) y[i] += (X.r() * 2 - 1) * 0.6 * pk * (1 - i / cl);
  X.w[2] += 0.15; return y;
}
// puts the source's own attack on top of the sound (as loud as the body or louder), then boosts the first milliseconds
function hit(y, X, k) {
  k = k || 1;
  var r = X.r, sr = X.sr, on = Math.max(0, Math.floor(A.onsetMs / 1000 * sr)), n = Math.floor(sr * (0.012 + 0.025 * r())), i;
  var pk = peak(y), po = 1e-9;
  for (i = 0; i < n && on + i < orig.length; i++) po = Math.max(po, Math.abs(orig[on + i]));
  var g = Math.min(4, pk * (0.5 + 0.6 * r()) * k / po);
  for (i = 0; i < n && on + i < orig.length && i < y.length; i++) y[i] += orig[on + i] * g * (1 - i / n);
  return fxTransient(y, X, (0.8 + 1.4 * r()) * k, 5 + 9 * r());
}
// crescendo that starts at a fraction of full level instead of silence
function swell(y, X, floorLvl, frac) {
  var n = Math.max(1, Math.floor(y.length * frac)), i;
  for (i = 0; i < n && i < y.length; i++) y[i] *= floorLvl + (1 - floorLvl) * (0.5 - 0.5 * Math.cos(Math.PI * i / n));
  X.w[2] += 0.2; return y;
}
function pCollision(y, X) {
  // stacked, re-pitched hits that ricochet: spacing and level shrink like a bouncing impact, then metallic clang + grit
  var r = X.r, L = X.L, sr = X.sr, c = X.c, n = y.length, i, k;
  var layers = 2 + Math.floor(r() * (2 + 3 * L)), out = zeros(Math.min(SF, n + Math.floor(sr * 0.5)));
  var t = 0, gap = sr * (0.02 + 0.1 * r()), amp = 1;
  for (k = 0; k < layers; k++) {
    var layer = resample(y, Math.pow(2, ((r() * 2 - 1) * (2 + 10 * L) + (k == 0 ? 0 : -X.dir * 2 * r())) / 12));
    if (r() < 0.25) layer.reverse();
    var off = Math.floor(t);
    for (i = 0; i < layer.length && off + i < out.length; i++) out[off + i] += layer[i] * amp;
    t += gap; gap *= 0.55 + 0.3 * r(); amp *= 0.6 + 0.3 * r();
  }
  X.w[2] += 0.7; X.w[0] += 0.3; y = out;
  y = fxRing(y, X, 200 + r() * 1200, 0.2 + 0.4 * L * r());
  y = fxComb(y, X, 0.001 + 0.007 * r(), 0.4 + 0.4 * r());
  y = fxFilter(y, X, r() < 0.5 ? "bp" : "hp", c * (0.6 + r() * 2), 1 + r() * 4, false);
  if (r() < 0.7) y = fxSat(y, X, 2 + L * 6 * r());
  y = fxNoise(y, X, 0.15 + 0.3 * L * r(), c * (1 + r() * 2), 1 + r() * 3);
  return hit(fxDecay(y, X, 0.15 + 0.5 * r()), X);
}
function pTension(y, X) {
  var r = X.r, L = X.L, c = X.c;
  y = trimLead(y, X);
  y = fxSweep(y, X, 0.55 + 0.3 * r(), 1.1 + L * 1.4 * r());
  y = fxTrem(y, X, 3 + 4 * r(), 14 + 14 * r() * (0.5 + L), 0.5 + 0.4 * r());
  y = fxRing(y, X, 150 + r() * 700, 0.25 + 0.4 * L * r());
  y = fxFilter(y, X, "bp", c * Math.pow(2, r() * 1.5), 3 + 6 * r(), false);
  y = fxComb(y, X, 0.001 + 0.008 * r(), 0.5 + 0.35 * r());
  if (r() < 0.6) y = fxNoise(y, X, 0.2 + 0.3 * r(), c * 1.5, 2);
  y = swell(y, X, 0.25, 0.5 + 0.4 * r());
  return hit(y, X);
}
function pSynth(y, X) {
  var r = X.r, L = X.L, c = X.c, f = (A.f0 || 220), sc = [0, 2, 4, 7, 9];
  f *= Math.pow(2, X.dir * (sc[X.n % 5] + 12 * Math.floor(r() * (1 + L * 2))) / 12);
  while (f > 2000) f /= 2; while (f < 50) f *= 2;
  y = fxSynth(y, X, Math.min(1, 0.65 + 0.35 * L), f, Math.floor(r() * 3), 1 + Math.floor(r() * 3));
  y = fxFilter(y, X, "lp", c * Math.pow(2, 0.2 + 1.5 * r()), 1 + L * 6 * r(), true);
  if (r() < 0.5) y = fxSat(y, X, 1 + 3 * r());
  if (r() < 0.4) y = fxChorus(y, X, 0.1 + 0.2 * r(), 0.4);
  return hit(y, X);
}
function pGlitch(y, X) {
  var r = X.r, L = X.L;
  y = trimLead(y, X);
  y = fxGlitch(y, X, 0.4 + 0.6 * L);
  y = fxGate(y, X, Math.floor(X.sr * (0.01 + 0.05 * r())), 0.25 + 0.3 * L);
  y = fxCrush(y, X, 6 + Math.floor(r() * 4), 2 + Math.floor(r() * 6));
  if (r() < 0.5) y = fxFilter(y, X, r() < 0.5 ? "hp" : "bp", X.c * (0.5 + r() * 2), 1 + r() * 4, false);
  return hit(y, X);
}

function mkX(r, n, L) { return { r: r, sr: st.sr, L: L, dir: n < ROOT ? -1 : 1, c: Math.max(150, A.centroid), w: [0, 0, 0, 0, 0, 0], n: n }; }
// the key IS the pitch: chromatic varispeed (compressed beyond +-2 octaves so extreme keys stay usable)
function pRepitched(y, X) {
  var d = X.n - ROOT, ad = Math.abs(d);
  var semi = (d < 0 ? -1 : 1) * (ad <= 24 ? ad : 24 + (ad - 24) * 0.4) + (X.r() * 2 - 1) * 0.08;
  y = resample(y, Math.pow(2, semi / 12));
  X.w[0] += 0.3 + Math.min(1, ad / 24);
  if (semi > 0) X.w[1] += 0.2 + semi / 20; else X.w[2] += 0.2 - semi / 20;
  return hit(y, X, 0.6);
}
// two vowels, morphing into each other, formed out of the sample's own energy
// cold alloy: the strike ring-modulated at inharmonic partials, then stacked combs and a narrow resonance
function pMetal(y, X) {
  var r = X.r, L = X.L, c = X.c, sr = X.sr, i, k;
  y = trimLead(y, X);
  if (r() < 0.5) y = fxPitch(y, X, X.dir * L * 5 * r());
  var base = clamp((A.f0 || 220) * Math.pow(2, Math.floor(r() * 7) / 12), 90, 900), dry = y.slice(0), n = dry.length, out = zeros(n), ratios = [1, 2.76, 5.4];
  for (k = 0; k < 3; k++) {
    var rm = fxRing(dry.slice(0), X, base * ratios[k] * (0.97 + 0.06 * r()), 1);
    for (i = 0; i < n; i++) out[i] += rm[i] / (k + 1);
  }
  var kk = peak(dry) / peak(out);
  for (i = 0; i < n; i++) out[i] = out[i] * kk * 0.8 + dry[i] * 0.3;
  y = extend(out, Math.floor(sr * (0.2 + 0.5 * r())));
  y = fxComb(y, X, 0.001 + 0.006 * r(), 0.55 + 0.3 * r());
  y = fxComb(y, X, 0.002 + 0.012 * r(), 0.4 + 0.3 * r());
  y = fxFilter(y, X, "bp", c * Math.pow(2, r() * 2 - 0.5), 4 + 6 * r(), false);
  y = fxSat(y, X, 1.5 + L * 4 * r());
  return hit(y, X);
}
var PROFILES = [null, pRepitched, pCollision, pTension, pGlitch, pSynth, pMetal];
// Mixed: every key gets a different character, and now and then two are layered
function layer2(a, b, m) {
  var pa = peak(a), pb = peak(b), n = Math.max(a.length, b.length), out = zeros(n), i;
  for (i = 0; i < n; i++) out[i] = (i < a.length ? a[i] / pa : 0) * (1 - m) + (i < b.length ? b[i] / pb : 0) * m;
  return out;
}

function makeVar(n) {
  var r = rng(st.seed, n), d = Math.abs(n - ROOT), L = 0.06 + 0.94 * Math.pow(Math.min(d, 66) / 66, 0.85), X = mkX(r, n, L), y, i, k;
  if (st.char == 0) {
    var N = PROFILES.length - 1, pa = 1 + Math.floor(r() * N);
    y = PROFILES[pa](orig.slice(0), X);
    if (r() < 0.35 + 0.3 * L) {
      var pb = 1 + Math.floor(r() * N); if (pb == pa) pb = 1 + (pb % N);
      var X2 = mkX(rng(st.seed + 101, n), n, L), y2 = PROFILES[pb](orig.slice(0), X2);
      y = layer2(y, y2, 0.4 + 0.3 * r());
      for (k = 0; k < 6; k++) X.w[k] += 0.7 * X2.w[k];
    }
  } else y = PROFILES[st.char](orig.slice(0), X);
  if (y.length > SF) y.length = SF;
  var mean = 0, pk = 0;
  for (i = 0; i < y.length; i++) { if (!(y[i] === y[i]) || Math.abs(y[i]) > 1e6) y[i] = 0; mean += y[i]; }
  mean /= Math.max(1, y.length);
  for (i = 0; i < y.length; i++) { y[i] -= mean; var a = Math.abs(y[i]); if (a > pk) pk = a; }
  if (pk < 1e-6) { y = orig.slice(0); pk = 0.89; }
  var gn = 0.89 / pk;
  for (i = 0; i < y.length; i++) y[i] *= gn;
  fade(y, Math.floor(0.002 * X.sr), Math.floor(0.008 * X.sr));
  var bi = 0, k; for (k = 1; k < 6; k++) if (X.w[k] > X.w[bi]) bi = k;
  lastCl = bi; lastL = L; wStore[n] = X.w.slice(0);
  return y;
}

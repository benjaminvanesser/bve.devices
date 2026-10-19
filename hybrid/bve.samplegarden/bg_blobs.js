// Blob Garden - visualiser (jsui). Red source in the centre; variations drift into clusters by manipulation type.
autowatch = 1;
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var ACC = [0.012, 0.765, 0.835];   // accent: same as bg_adsr.js, dial arcs, live.text on-state, menu highlight
var ROOT = 60, W = 0, H = 0, prog = 1, NC = 6;
var NAMES = ["pitch", "tone", "time", "grit", "mod", "texture"];
var en = [], B = [], ripples = [], n;
var orig = { bright: 0.5, rms: 0.3, flat: 0.3, bands: [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], has: false };
for (n = 0; n < 128; n++) { en[n] = 0; B[n] = null; }
    
function clearall() {
  var i;
  for (i = 0; i < 128; i++) { B[i] = null; en[i] = 0; }
  ripples = []; held = -1; prog = 1; revealed = false;
  orig = { bright: 0.5, rms: 0.3, flat: 0.3, bands: [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], has: false };
  mgraphics.redraw();
}

function clamp01(x) { return x < 0 ? 0 : (x > 1 ? 1 : x); }
function hsv(h, s, v) {
  var i = Math.floor(h * 6), f = h * 6 - i, p = v * (1 - s), q = v * (1 - f * s), t = v * (1 - (1 - f) * s);
  switch (i % 6) { case 0: return [v, t, p]; case 1: return [q, v, p]; case 2: return [p, v, t]; case 3: return [p, q, v]; case 4: return [t, p, v]; default: return [v, p, q]; }
}
// one bright colour per key, shared by the garden and the ADSR display (identical function in bg_adsr.js)
function voiceColor(p) { var h = (p * 0.61803398875) % 1; if (h > 0.44 && h < 0.6) h += 0.17; return hsv(h % 1, 0.78, 1.0); }
function mixc(c, t, k) { return [c[0] + (t[0] - c[0]) * k, c[1] + (t[1] - c[1]) * k, c[2] + (t[2] - c[2]) * k]; }
// palette family: indigo -> blue -> cyan -> green -> lime -> yellow -> amber (red is reserved for the source)
// every blob wears the bright colour of its key - the same colour its line gets in the ADSR display
function normalise() {}
function lit(c, e) { return [c[0] + (1 - c[0]) * e * 0.55, c[1] + (1 - c[1]) * e * 0.55, c[2] + (1 - c[2]) * e * 0.55]; }

function target(b) {
  var cx = W / 2, cy = H / 2, rx = W / 2 - 10, ry = H / 2 - 10;
  var th = -Math.PI / 2 + 2 * Math.PI * (b.cl + 0.5) / NC;
  var spread = (2 * Math.PI / NC) * 0.78;
  var a = th + (b.s - 0.5) * spread, rho = 0.2 + 0.76 * b.L;
  b.tx = cx + Math.cos(a) * rx * rho; b.ty = cy + Math.sin(a) * ry * rho;
}

// ---- messages ----
var revealed = false;
function reset() { for (var i = 0; i < 128; i++) B[i] = null; ripples = []; prog = 0; revealed = false; }
function progress(p) { prog = p; if (p >= 1 && !revealed) reveal(); }
// blobs stay hidden while the bank is generated; when everything is loaded they spawn from the source, innermost first
function reveal() {
  revealed = true;
  var list = [], i, t = new Date().getTime();
  for (i = 0; i < 128; i++) if (B[i]) list.push(B[i]);
  list.sort(function (p, q) { return p.L - q.L; });
  for (i = 0; i < list.length; i++) { list[i].t = t + 120 + i * 14; list[i].x = W / 2; list[i].y = H / 2; list[i].vx = 0; list[i].vy = 0; }
}
function blob(note, bright, rms, zcr, sd, cl, L) {
  var b = { show: false, t: 0, b: bright, r: rms, z: zcr, s: sd, cl: cl, L: L, x: W / 2, y: H / 2, vx: 0, vy: 0, ph: sd * 6.283, k: 2 + Math.floor(sd * 4), tx: 0, ty: 0 };
  b.s2 = (sd * 7.31) % 1; b.col = voiceColor(note);
  if (W) target(b);
  B[note] = b;
  normalise();
}
function cluster(note, cl) { if (B[note]) { B[note].cl = cl; if (W) target(B[note]); } if (note == 127 || note == 126) normalise(); }
function note(p, v) {
  if (v <= 0) return;
  en[p] = Math.max(en[p], 0.5 + 0.5 * (v / 127));
  var x = W / 2, y = H / 2, col = [1, 0.2, 0.15];
  if (p != ROOT && (!B[p] || !B[p].show)) return;
  if (p != ROOT) { x = B[p].x; y = B[p].y; }
  ripples.push({ x: x, y: y, age: 0, col: voiceColor(p) });
  if (ripples.length > 24) ripples.shift();
  for (var i = 0; i < 128; i++) {   // kick neighbours away from the struck blob
    var o = B[i]; if (!o || !o.show || i == p) continue;
    var dx = o.x - x, dy = o.y - y, d = Math.sqrt(dx * dx + dy * dy) + 0.01;
    if (d < 34) { var f = (1 - d / 34) * 3.2 * (v / 127 + 0.3); o.vx += dx / d * f; o.vy += dy / d * f; }
  }
}
function anything() {
  if (messagename == "orig") {
    var a = arrayfromargs(arguments);
    orig = { bright: a[0], rms: a[1], flat: a[2], bands: a.slice(3, 11), has: true };
  }
}

// ---- physics + animation ----
var tk = new Task(tick, this);
tk.interval = 33; tk.repeat();
function tick() {
  var t = new Date().getTime() / 1000, i, j, cx = W / 2, cy = H / 2;
  if (W) {
    for (i = 0; i < 128; i++) {
      var a = B[i]; if (!a || !a.show) continue;
      var wx = a.tx + Math.sin(t * 0.7 + a.ph) * 2.2, wy = a.ty + Math.cos(t * 0.6 + a.ph * 1.3) * 2.2;
      a.vx += (wx - a.x) * 0.045; a.vy += (wy - a.y) * 0.045;
      for (j = i + 1; j < 128; j++) {
        var o = B[j]; if (!o || !o.show) continue;
        var dx = o.x - a.x, dy = o.y - a.y, d2 = dx * dx + dy * dy;
        if (d2 < 49 && d2 > 0.0001) {
          var d = Math.sqrt(d2), f = (7 - d) / 7 * 0.35;
          a.vx -= dx / d * f; a.vy -= dy / d * f; o.vx += dx / d * f; o.vy += dy / d * f;
        }
      }
    }
    for (i = 0; i < 128; i++) { var q = B[i]; if (!q || !q.show) continue; q.vx *= 0.82; q.vy *= 0.82; q.x += q.vx; q.y += q.vy; }
  }
  var nowT = new Date().getTime();
  for (i = 0; i < 128; i++) if (B[i] && !B[i].show && B[i].t && nowT >= B[i].t) B[i].show = true;
  for (i = 0; i < 128; i++) en[i] = en[i] > 0.004 ? en[i] * 0.91 : 0;
  for (i = ripples.length - 1; i >= 0; i--) { ripples[i].age += 0.035; if (ripples[i].age > 1) ripples.splice(i, 1); }
  mgraphics.redraw();
}
function notifydeleted() { tk.cancel(); tk.freepeer(); }

function blobPath(cx, cy, r, k, ph, wob, t) {
  var steps = 14, mg = mgraphics;
  for (var i = 0; i <= steps; i++) {
    var a = i / steps * 2 * Math.PI, rr = r * (1 + wob * Math.sin(k * a + ph + t));
    var x = cx + Math.cos(a) * rr, y = cy + Math.sin(a) * rr;
    if (i == 0) mg.move_to(x, y); else mg.line_to(x, y);
  }
  mg.close_path();
}
function centerPath(cx, cy, r, t) {
  var steps = 72, mg = mgraphics;
  for (var i = 0; i <= steps; i++) {
    var a = i / steps * 2 * Math.PI, u = (i / steps) * 8, b0 = Math.floor(u) % 8, b1 = (b0 + 1) % 8, f = u - Math.floor(u);
    f = f * f * (3 - 2 * f);
    var v = orig.bands[b0] * (1 - f) + orig.bands[b1] * f;
    var rr = r * (0.62 + 0.7 * v) * (1 + 0.05 * Math.sin(t * 1.9 + a * 3) + 0.03 * Math.sin(t * 3.1 - a * 5));
    var x = cx + Math.cos(a - Math.PI / 2) * rr, y = cy + Math.sin(a - Math.PI / 2) * rr;
    if (i == 0) mg.move_to(x, y); else mg.line_to(x, y);
  }
  mg.close_path();
}

function paint() {
  var w = box.rect[2] - box.rect[0], h = box.rect[3] - box.rect[1], mg = mgraphics, i, c;
  if (w != W || h != H) { W = w; H = h; for (i = 0; i < 128; i++) if (B[i]) target(B[i]); }
  var cx = W / 2, cy = H / 2, rx = W / 2 - 10, ry = H / 2 - 10, t = new Date().getTime() / 1000;
  mg.set_source_rgba(0.05, 0.055, 0.07, 1); mg.rectangle(0, 0, W, H); mg.fill();

  // cluster labels + faint spokes
  mg.select_font_face("Arial"); mg.set_font_size(8); mg.set_line_width(1);
  for (i = 0; i < NC; i++) {
    var th = -Math.PI / 2 + 2 * Math.PI * (i + 0.5) / NC, bth = th - Math.PI / NC;
    mg.move_to(cx + Math.cos(bth) * rx * 0.2, cy + Math.sin(bth) * ry * 0.2);
    mg.line_to(cx + Math.cos(bth) * rx, cy + Math.sin(bth) * ry);
    mg.set_source_rgba(ACC[0], ACC[1], ACC[2], 0.12); mg.stroke();
    mg.move_to(cx + Math.cos(th) * rx * 0.99 - 8, cy + Math.sin(th) * ry * 0.99 + 3);
    mg.set_source_rgba(1, 1, 1, 0.28); mg.show_text(NAMES[i]);
  }
  // ripples
  for (i = 0; i < ripples.length; i++) {
    var rp = ripples[i], col = rp.col;
    mg.ellipse(rp.x - rp.age * 46, rp.y - rp.age * 46, rp.age * 92, rp.age * 92);
    mg.set_source_rgba(col[0], col[1], col[2], 0.7 * (1 - rp.age)); mg.set_line_width(1.3); mg.stroke();
  }
  // rays from the centre to lit blobs
  for (i = 0; i < 128; i++) {
    var a = B[i]; if (i == ROOT || !a || !a.show || en[i] < 0.05) continue;
    c = voiceColor(i);
    mg.move_to(cx, cy); mg.line_to(a.x, a.y);
    mg.set_source_rgba(c[0], c[1], c[2], 0.65 * en[i]); mg.set_line_width(1); mg.stroke();
  }
  // variations (small blobs)
  for (i = 0; i < 128; i++) {
    var b = B[i]; if (i == ROOT || !b || !b.show) continue;
    var e = en[i], breathe = 1 + 0.12 * Math.sin(t * 1.4 + b.ph);
    var sz = (1.7 + 1.5 * Math.sqrt(clamp01(b.r / Math.max(0.01, orig.rms) * 0.6))) * breathe * (1 + 0.9 * e);
    var vc = voiceColor(i);
    c = mixc(mixc(vc, [0.05, 0.055, 0.07], 0.28), mixc(vc, [1, 1, 1], 0.25), clamp01(e * 1.6));   // resting: the key colour a touch dimmed; playing: full colour
    var wob = 0.1 + 0.3 * b.z;
    if (e > 0.02) {
      for (var g = 3; g >= 1; g--) {
        blobPath(b.x, b.y, sz * (1 + 0.9 * g * e), b.k, b.ph, wob, t * 2);
        mg.set_source_rgba(vc[0], vc[1], vc[2], 0.1 * e * (4 - g)); mg.fill();
      }
    }
    blobPath(b.x, b.y, sz, b.k, b.ph, wob, t * 2);
    mg.set_source_rgba(c[0], c[1], c[2], 0.55 + 0.45 * e); mg.fill();
  }
  // the source: red
  var eR = en[ROOT], r0 = 8 + 3 * clamp01(orig.rms * 2);
  for (var g2 = 4; g2 >= 1; g2--) {
    centerPath(cx, cy, r0 * (1 + 0.2 * g2 + 0.6 * eR * g2 / 2), t);
    mg.set_source_rgba(1, 0.15, 0.1, 0.05 + 0.12 * eR); mg.fill();
  }
  centerPath(cx, cy, r0 * (1 + 0.3 * eR), t);
  mg.set_source_rgba(0.95, 0.12 + 0.3 * eR, 0.1 + 0.3 * eR, orig.has ? 1 : 0.3); mg.fill();
  centerPath(cx, cy, r0 * 0.4, t * 1.3);
  mg.set_source_rgba(1, 0.8, 0.7, 0.2 + 0.6 * eR); mg.fill();
  if (prog < 1) { mg.rectangle(0, H - 3, W * prog, 3); mg.set_source_rgba(ACC[0], ACC[1], ACC[2], 1); mg.fill(); }
}
var held = -1;
function onclick(x, y, but) {
  var best = -1, bd = 1e9, i;
  for (i = 0; i < 128; i++) {
    var px = (i == ROOT) ? W / 2 : (B[i] && B[i].show ? B[i].x : -999), py = (i == ROOT) ? H / 2 : (B[i] && B[i].show ? B[i].y : -999);
    var d = (x - px) * (x - px) + (y - py) * (y - py), lim = (i == ROOT) ? 225 : 100;
    if (d < lim && d < bd) { bd = d; best = i; }
  }
  if (best >= 0) { held = best; note(best, 100); outlet(0, "note", best, 100); }
}
function ondrag(x, y, but) { if (!but && held >= 0) { outlet(0, "note", held, 0); held = -1; } }
function onresize(w, h) { W = 0; mgraphics.redraw(); }

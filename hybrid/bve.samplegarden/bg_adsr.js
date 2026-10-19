// Blob Garden - ADSR display. Accent-coloured envelope (same colour as the live.dial arcs); every sounding voice gets its own coloured line.
autowatch = 1;
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
var BLUE = [0.012, 0.765, 0.835];                     // accent: identical to the dial arcs, live.text on-state and menu highlight
var P = { a: 2, d: 400, s: 1, r: 80, len: 2000, gate: 0 }, voices = [];
function hsv(h, s, v) {
  var i = Math.floor(h * 6), f = h * 6 - i, p = v * (1 - s), q = v * (1 - f * s), t = v * (1 - (1 - f) * s);
  switch (i % 6) { case 0: return [v, t, p]; case 1: return [q, v, p]; case 2: return [p, v, t]; case 3: return [p, q, v]; case 4: return [t, p, v]; default: return [v, p, q]; }
}
// one bright colour per key, shared by the garden and the ADSR display (identical function in bg_adsr.js)
function voiceColor(p) { var h = (p * 0.61803398875) % 1; if (h > 0.44 && h < 0.6) h += 0.17; return hsv(h % 1, 0.78, 1.0); }

function now() { return new Date().getTime(); }
function mix(c, t, k) { return [c[0] + (t[0] - c[0]) * k, c[1] + (t[1] - c[1]) * k, c[2] + (t[2] - c[2]) * k]; }
// the blue and its shades: light attack, base decay, slightly darker sustain, darkest release
function shade(stage) {
  if (stage == 0) return mix(BLUE, [1, 1, 1], 0.35);
  if (stage == 1) return BLUE;
  if (stage == 2) return mix(BLUE, [0, 0, 0], 0.18);
  return mix(BLUE, [0, 0, 0], 0.4);
}
function adsr(a, d, s, r, len, gate) { P = { a: Math.max(0.1, a), d: Math.max(1, d), s: s, r: Math.max(1, r), len: Math.max(10, len), gate: gate }; }
function note(p, v) {
  var i;
  if (v > 0) {
    voices.push({ t0: now(), tOff: -1, v: v / 127, col: voiceColor(p), p: p, held: true });
    if (voices.length > 16) voices.shift();
  } else if (P.gate) {
    for (i = voices.length - 1; i >= 0; i--) if (voices[i].p == p && voices[i].held) { voices[i].tOff = now() - voices[i].t0; voices[i].held = false; break; }
  }
}
function tRelDefault() { return Math.max(0, P.len - P.r); }
function ads(t) {
  if (t < P.a) return t / P.a;
  if (t < P.a + P.d) return 1 - (1 - P.s) * (t - P.a) / P.d;
  return P.s;
}
function level(t, tRel) {
  if (t <= tRel) return ads(t);
  var l0 = ads(tRel), k = (t - tRel) / P.r;
  return k >= 1 ? 0 : l0 * (1 - k);
}
function stageAt(t, tRel) { return t > tRel ? 3 : (t < P.a ? 0 : (t < P.a + P.d ? 1 : 2)); }
// the joints of the envelope: start, attack peak, end of decay, start of release, end of release
function jointsFor(tRel) {
  var raw = [{ t: 0, l: 0, stage: 0 }];
  if (P.a <= tRel) raw.push({ t: P.a, l: 1, stage: 0 });
  if (P.a + P.d <= tRel) raw.push({ t: P.a + P.d, l: P.s, stage: 1 });
  raw.push({ t: tRel, l: ads(tRel), stage: 2 });
  raw.push({ t: tRel + P.r, l: 0, stage: 3 });
  var pts = [], i;
  for (i = 0; i < raw.length; i++) if (!pts.length || Math.abs(raw[i].t - pts[pts.length - 1].t) > 0.5) pts.push(raw[i]);   // drop duplicates
  return pts;
}
var tk = new Task(function () { mgraphics.redraw(); }, this);
tk.interval = 40; tk.repeat();
function notifydeleted() { tk.cancel(); tk.freepeer(); }

function paint() {
  var w = box.rect[2] - box.rect[0], h = box.rect[3] - box.rect[1], mg = mgraphics, i, j, t, c;
  var pl = 8, pr = 8, pt = 16, pb = 8, gw = w - pl - pr, gh = h - pt - pb;
  mg.set_source_rgba(0.09, 0.1, 0.12, 1); mg.rectangle(0, 0, w, h); mg.fill();
  var tRel = tRelDefault(), T = Math.max(1, tRel + P.r), N = 120, tn = now();
  function X(tt) { return pl + gw * Math.min(tt, T) / T; }
  function Y(l) { return pt + gh * (1 - l); }
  // expire finished voices
  for (i = voices.length - 1; i >= 0; i--) {
    var vo = voices[i], trv = (vo.tOff >= 0) ? Math.min(vo.tOff, tRel) : tRel;
    if (tn - vo.t0 > trv + P.r + 250) voices.splice(i, 1);
  }
  var active = voices.length > 0;
  // stage dividers
  mg.set_line_width(1);
  var marks = [P.a, P.a + P.d, tRel];
  for (i = 0; i < marks.length; i++) {
    if (marks[i] <= 0 || marks[i] >= T) continue;
    mg.move_to(X(marks[i]), pt); mg.line_to(X(marks[i]), pt + gh); mg.set_source_rgba(1, 1, 1, 0.07); mg.stroke();
  }
  // blue envelope: filled area + stage-shaded line
  mg.move_to(X(0), Y(0));
  for (i = 0; i <= N; i++) { t = T * i / N; mg.line_to(X(t), Y(level(t, tRel))); }
  mg.line_to(X(T), Y(0)); mg.close_path();
  mg.set_source_rgba(BLUE[0], BLUE[1], BLUE[2], active ? 0.08 : 0.2); mg.fill();
  mg.set_line_width(active ? 1.2 : 1.8);
  for (i = 0; i < N; i++) {
    var t1 = T * i / N, t2 = T * (i + 1) / N; c = shade(stageAt((t1 + t2) / 2, tRel));
    mg.move_to(X(t1), Y(level(t1, tRel))); mg.line_to(X(t2), Y(level(t2, tRel)));
    mg.set_source_rgba(c[0], c[1], c[2], active ? 0.5 : 1); mg.stroke();
  }
  // joint points on the blue envelope
  var J = jointsFor(tRel);
  for (i = 0; i < J.length; i++) {
    c = shade(J[i].stage);
    mg.ellipse(X(J[i].t) - 3.5, Y(J[i].l) - 3.5, 7, 7); mg.set_source_rgba(0.09, 0.1, 0.12, 1); mg.fill();               // dark ring so the dot stands out
    mg.ellipse(X(J[i].t) - 2.5, Y(J[i].l) - 2.5, 5, 5); mg.set_source_rgba(c[0], c[1], c[2], active ? 0.75 : 1); mg.fill();
  }
  // one line per sounding voice (height = velocity), bright where the voice already is, dot at its playhead
  for (j = 0; j < voices.length; j++) {
    var v = voices[j], tr = (v.tOff >= 0) ? Math.min(v.tOff, tRel) : tRel, el = tn - v.t0, tot = tr + P.r, cur = Math.min(el, tot);
    c = v.col;
    mg.move_to(X(0), Y(0));
    for (i = 0; i <= N; i++) { t = T * i / N; mg.line_to(X(t), Y(level(t, tr) * v.v)); }
    mg.set_source_rgba(c[0], c[1], c[2], 0.22); mg.set_line_width(1); mg.stroke();
    var steps = Math.max(2, Math.floor(N * cur / T));
    mg.move_to(X(0), Y(0));
    for (i = 1; i <= steps; i++) { t = cur * i / steps; mg.line_to(X(t), Y(level(t, tr) * v.v)); }
    mg.set_source_rgba(c[0], c[1], c[2], 1); mg.set_line_width(1.8); mg.stroke();
    var JV = jointsFor(tr);
    for (i = 0; i < JV.length; i++) {
      var jx = X(JV[i].t), jy = Y(JV[i].l * v.v);
      mg.ellipse(jx - 2.5, jy - 2.5, 5, 5); mg.set_source_rgba(0.09, 0.1, 0.12, 1); mg.fill();
      mg.ellipse(jx - 1.8, jy - 1.8, 3.6, 3.6); mg.set_source_rgba(c[0], c[1], c[2], JV[i].t <= cur ? 1 : 0.4); mg.fill();
    }
    var lv = level(cur, tr) * v.v;
    mg.move_to(X(cur), pt); mg.line_to(X(cur), pt + gh); mg.set_source_rgba(c[0], c[1], c[2], 0.3); mg.set_line_width(1); mg.stroke();
    mg.ellipse(X(cur) - 3, Y(lv) - 3, 6, 6); mg.set_source_rgba(c[0], c[1], c[2], 1); mg.fill();
  }
  // labels
  mg.select_font_face("Arial"); mg.set_font_size(8);
  mg.move_to(pl, 11); mg.set_source_rgba(0.8, 0.85, 0.92, 0.9);
  mg.show_text("A " + Math.round(P.a) + "  D " + Math.round(P.d) + "  S " + Math.round(P.s * 100) + "%  R " + Math.round(P.r) + " ms" + (active ? "   voices " + voices.length : ""));
}
function onresize() { mgraphics.redraw(); }
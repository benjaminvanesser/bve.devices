// GLITCH MACHINE - display script for [jsui]. One file, four modes:
// wave | env | beat | lfo   (mode is set by the engine with "setmode <name>")
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
inlets = 1;
outlets = 0;

var MODE = "wave";
var D = {
    frames: [], shaped: [], scan: 0, label: "",
    env: [], marks: [], loops: [],
    hits: [], play: -1, tpb: 192,
    lfo: [], lfolabel: "", lpos: [-1, 0], tgt: ["Off", 0, 0, 0], ehead: [-1, -1], mods: []
};

function setmode(m) { MODE = m; mgraphics.redraw(); }
function frames() { D.frames = arrayfrom(arguments); }
function shaped() { D.shaped = arrayfrom(arguments); }
function scan(v) { D.scan = v; }
function label() { D.label = arrayfrom(arguments).join(" ").replace(/_/g, " "); mgraphics.redraw(); }
function env() { D.env = arrayfrom(arguments); }
function marks() { D.marks = arrayfrom(arguments); }
function loops() { D.loops = arrayfrom(arguments); mgraphics.redraw(); }
function hits() { D.hits = arrayfrom(arguments); mgraphics.redraw(); }
function meta(t) { D.tpb = t; }
function play(v) { D.play = v; mgraphics.redraw(); }
function lfo() { D.lfo = arrayfrom(arguments); }
function lfolabel() { D.lfolabel = arrayfrom(arguments).join(" ").replace(/_/g, " "); mgraphics.redraw(); }
function ehead() { D.ehead = arrayfrom(arguments); mgraphics.redraw(); }
function lpos() { D.lpos = arrayfrom(arguments); }
function tgt() { D.tgt = arrayfrom(arguments); mgraphics.redraw(); }
function mods() { var a = arrayfrom(arguments); D.mods = (a.length && a[0] === "none") ? [] : a; mgraphics.redraw(); }
function onresize() { mgraphics.redraw(); }

function arrayfrom(a) {
    var o = [], i;
    for (i = 0; i < a.length; i++) { o.push(typeof a[i] === "number" && !isFinite(a[i]) ? 0 : a[i]); }
    return o;
}
function nz(v) { return (typeof v === "number" && isFinite(v)) ? v : 0; }

function getSize() {
    try { var r = box.rect; return [r[2] - r[0], r[3] - r[1]]; } catch (e) { return [180, 165]; }
}
function hsv(h, s, v) {
    var i = Math.floor(h * 6), f = h * 6 - i, p = v * (1 - s), q = v * (1 - f * s), t = v * (1 - (1 - f) * s);
    i = ((i % 6) + 6) % 6;
    return [[v, t, p], [q, v, p], [p, v, t], [p, q, v], [t, p, v], [v, p, q]][i];
}
function col(c, a) { mgraphics.set_source_rgba(c[0], c[1], c[2], a); }
function bg(w, h) {
    mgraphics.set_source_rgba(0.012, 0.012, 0.014, 1);
    mgraphics.rectangle(0, 0, w, h);
    mgraphics.fill();
    mgraphics.set_source_rgba(0.045, 0.045, 0.05, 1);
    mgraphics.rectangle(0, h * 0.5, w, h * 0.5);
    mgraphics.fill();
    mgraphics.set_source_rgba(0.012, 0.012, 0.014, 0.55);
    mgraphics.rectangle(0, h * 0.5, w, h * 0.25);
    mgraphics.fill();
}
function text(s, x, y, size, c, a) {
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(size);
    col(c, a);
    mgraphics.move_to(x, y);
    mgraphics.text_path(s);
    mgraphics.fill();
}
function glowLine(pts, c, wid) {
    var k, i, wv = [wid * 4, wid * 2.2, wid], al = [0.10, 0.22, 1.0];
    for (k = 0; k < 3; k++) {
        col(c, al[k]);
        mgraphics.set_line_width(wv[k]);
        mgraphics.move_to(pts[0][0], pts[0][1]);
        for (i = 1; i < pts.length; i++) { mgraphics.line_to(pts[i][0], pts[i][1]); }
        mgraphics.stroke();
    }
}

// ------------------------------------------------------------------ WAVE
function paintWave(w, h) {
    var i, k, n = 64, pad = 8, nf = 8, top = 12, base0 = h * 0.52, dy = (h * 0.40) / (nf - 1);
    var amp = h * 0.075, x, pts, c, fr;
    bg(w, h);
    if (D.frames.length >= nf * n) {
        // back-to-front waterfall with hidden-line fill
        for (k = nf - 1; k >= 0; k--) {
            var by = top + (base0 - top) * 0 + (k) * 0 + (nf - 1 - k) * 0;
            by = top + 10 + (nf - 1 - k) * dy * 0.95 + 0;
            pts = [];
            for (i = 0; i < n; i++) {
                x = pad + i * (w - 2 * pad) / (n - 1);
                pts.push([x, by - D.frames[k * n + i] * amp]);
            }
            // occlusion fill
            mgraphics.set_source_rgba(0.014, 0.014, 0.016, 0.94);
            mgraphics.move_to(pts[0][0], pts[0][1]);
            for (i = 1; i < n; i++) { mgraphics.line_to(pts[i][0], pts[i][1]); }
            mgraphics.line_to(pts[n - 1][0], by + 12);
            mgraphics.line_to(pts[0][0], by + 12);
            mgraphics.close_path();
            mgraphics.fill();
            c = hsv(0.52 + 0.42 * (k / 7), 0.75, 1);
            col(c, 0.35 + 0.4 * (1 - k / 7));
            mgraphics.set_line_width(1.3);
            mgraphics.move_to(pts[0][0], pts[0][1]);
            for (i = 1; i < n; i++) { mgraphics.line_to(pts[i][0], pts[i][1]); }
            mgraphics.stroke();
        }
        // highlighted scan position (interpolated between frames)
        fr = Math.max(0, Math.min(7, D.scan * 7));
        var f0 = Math.floor(fr), f1 = Math.min(7, f0 + 1), fm = fr - f0;
        var sby = top + 10 + (nf - 1 - fr) * dy * 0.95;
        pts = [];
        for (i = 0; i < n; i++) {
            x = pad + i * (w - 2 * pad) / (n - 1);
            var v = D.frames[f0 * n + i] * (1 - fm) + D.frames[f1 * n + i] * fm;
            pts.push([x, sby - v * amp]);
        }
        glowLine(pts, [1, 1, 1], 1.8);
    }
    // shaped output (after PD / sync / fold)
    var sy0 = h * 0.62, sy1 = h - 22, mid = (sy0 + sy1) / 2, ah = (sy1 - sy0) / 2;
    mgraphics.set_source_rgba(1, 1, 1, 0.06);
    mgraphics.rectangle(pad, sy0 - 2, w - 2 * pad, sy1 - sy0 + 4);
    mgraphics.fill();
    mgraphics.set_line_width(1);
    mgraphics.set_source_rgba(1, 1, 1, 0.12);
    mgraphics.move_to(pad, mid); mgraphics.line_to(w - pad, mid); mgraphics.stroke();
    if (D.shaped.length > 2) {
        var m = D.shaped.length, seg;
        for (i = 1; i < m; i++) {
            var x0 = pad + (i - 1) * (w - 2 * pad) / (m - 1), x1 = pad + i * (w - 2 * pad) / (m - 1);
            var y0 = mid - D.shaped[i - 1] * ah * 0.95, y1 = mid - D.shaped[i] * ah * 0.95;
            c = hsv(0.95 - 0.7 * i / m, 0.8, 1);
            col(c, 0.18); mgraphics.set_line_width(6);
            mgraphics.move_to(x0, y0); mgraphics.line_to(x1, y1); mgraphics.stroke();
            col(c, 1); mgraphics.set_line_width(1.8);
            mgraphics.move_to(x0, y0); mgraphics.line_to(x1, y1); mgraphics.stroke();
        }
    }
    text(D.label, pad, h - 7, 10, [0.85, 0.9, 1], 0.9);
}

// ------------------------------------------------------------------ ENV
function paintEnv(w, h) {
    var i, n = D.env.length, pl = 6, pr = 6, pt = 8, pb = 14, gw = w - pl - pr, gh = h - pt - pb;
    bg(w, h);
    mgraphics.set_line_width(1);
    for (i = 1; i < 4; i++) {
        mgraphics.set_source_rgba(1, 1, 1, 0.06);
        mgraphics.move_to(pl, pt + gh * i / 4); mgraphics.line_to(w - pr, pt + gh * i / 4); mgraphics.stroke();
    }
    if (n < 3) { return; }
    var pts = [];
    for (i = 0; i < n; i++) { pts.push([pl + gw * i / (n - 1), pt + gh * (1 - D.env[i])]); }
    // filled area (vertical strips, orange -> magenta by height)
    for (i = 1; i < n; i++) {
        var c = hsv(0.08 - 0.12 * D.env[i], 0.85, 1);
        col(c, 0.28);
        mgraphics.rectangle(pts[i - 1][0], pts[i][1], pts[i][0] - pts[i - 1][0] + 0.8, pt + gh - pts[i][1]);
        mgraphics.fill();
    }
    // loop cut markers (dashed)
    for (i = 0; i < D.loops.length; i++) {
        var lx = pl + gw * D.loops[i], yy;
        mgraphics.set_source_rgba(0.5, 1, 0.8, 0.55);
        mgraphics.set_line_width(1);
        for (yy = pt; yy < pt + gh; yy += 6) { mgraphics.move_to(lx, yy); mgraphics.line_to(lx, yy + 3); mgraphics.stroke(); }
    }
    glowLine(pts, [1, 0.62, 0.25], 1.8);
    // playheads: global time position + position inside the loop cycle
    var ph1 = nz(D.ehead[0]), ph2 = nz(D.ehead[1]);
    if (D.ehead[0] >= 0) {
        var hx = pl + gw * Math.min(1, ph1), hy = pt + gh * (1 - D.env[Math.max(0, Math.min(n - 1, Math.round(ph1 * (n - 1))))]);
        mgraphics.set_source_rgba(1, 1, 1, 0.16); mgraphics.set_line_width(5);
        mgraphics.move_to(hx, pt); mgraphics.line_to(hx, pt + gh); mgraphics.stroke();
        mgraphics.set_source_rgba(1, 1, 1, 0.9); mgraphics.set_line_width(1.2);
        mgraphics.move_to(hx, pt); mgraphics.line_to(hx, pt + gh); mgraphics.stroke();
        col([1, 1, 1], 1); mgraphics.ellipse(hx - 3, hy - 3, 6, 6); mgraphics.fill();
    }
    if (D.ehead[1] >= 0) {
        var hx2 = pl + gw * Math.min(1, ph2), hy2 = pt + gh * (1 - D.env[Math.max(0, Math.min(n - 1, Math.round(ph2 * (n - 1))))]);
        mgraphics.set_source_rgba(0.4, 1, 0.85, 0.9); mgraphics.set_line_width(1);
        mgraphics.move_to(hx2, pt); mgraphics.line_to(hx2, pt + gh); mgraphics.stroke();
        col([0.4, 1, 0.85], 1); mgraphics.ellipse(hx2 - 3, hy2 - 3, 6, 6); mgraphics.fill();
    }
    // A D S R points
    var names = ["A", "D", "S", "R"], cols = [[1, 0.9, 0.3], [1, 0.55, 0.3], [0.4, 0.9, 1], [0.9, 0.5, 1]];
    for (i = 0; i < 4 && D.marks.length >= 8; i++) {
        var px = pl + gw * D.marks[i * 2], py = pt + gh * (1 - D.marks[i * 2 + 1]);
        col(cols[i], 0.25); mgraphics.ellipse(px - 7, py - 7, 14, 14); mgraphics.fill();
        col(cols[i], 1); mgraphics.ellipse(px - 3.5, py - 3.5, 7, 7); mgraphics.fill();
        text(names[i], Math.min(w - 12, Math.max(2, px - 3)), (i === 3 ? py - 9 : py - 9), 9, cols[i], 1);
    }
}

// ------------------------------------------------------------------ BEAT (radial)
function paintBeat(w, h) {
    var cx = w / 2, cy = h / 2, R = Math.min(w, h) / 2 - 6, r0 = R * 0.32, i, a, c;
    var N = 192, tpb = D.tpb || 192, beats = Math.max(1, Math.round(tpb / 48));
    bg(w, h);
    // rings
    mgraphics.set_line_width(1);
    for (i = 0; i < 3; i++) {
        mgraphics.set_source_rgba(1, 1, 1, 0.07);
        mgraphics.ellipse(cx - (r0 + (R - r0) * i / 2), cy - (r0 + (R - r0) * i / 2),
                          2 * (r0 + (R - r0) * i / 2), 2 * (r0 + (R - r0) * i / 2));
        mgraphics.stroke();
    }
    // grid ticks: 16ths subtle, beats strong
    for (i = 0; i < N; i += 12) {
        a = i / N * 2 * Math.PI - Math.PI / 2;
        var strong = (i % Math.max(1, Math.round(N / beats)) === 0);
        mgraphics.set_source_rgba(1, 1, 1, strong ? 0.28 : 0.09);
        mgraphics.set_line_width(strong ? 1.4 : 0.8);
        mgraphics.move_to(cx + Math.cos(a) * (strong ? r0 * 0.7 : r0 * 0.9), cy + Math.sin(a) * (strong ? r0 * 0.7 : r0 * 0.9));
        mgraphics.line_to(cx + Math.cos(a) * R, cy + Math.sin(a) * R);
        mgraphics.stroke();
    }
    // hits
    var k, cell, v, p, g, d, glow, r1, ax, ay, bx, by;
    for (k = 0; k + 3 < D.hits.length; k += 4) {
        cell = D.hits[k]; v = D.hits[k + 1]; p = D.hits[k + 2]; g = D.hits[k + 3];
        d = D.play >= 0 ? ((D.play - cell) % N + N) % N : 999;
        glow = d < 28 ? 1 - d / 28 : 0;
        a = (cell + 0.5) / N * 2 * Math.PI - Math.PI / 2;
        r1 = r0 + (R - r0) * (0.18 + 0.82 * v);
        c = hsv(((p + 24) / 48) * 0.8 + 0.02, 0.8, 1);
        ax = cx + Math.cos(a) * r0; ay = cy + Math.sin(a) * r0;
        bx = cx + Math.cos(a) * r1; by = cy + Math.sin(a) * r1;
        col(c, 0.12 + 0.3 * glow); mgraphics.set_line_width(5 + Math.min(4, g * 0.25));
        mgraphics.move_to(ax, ay); mgraphics.line_to(bx, by); mgraphics.stroke();
        col(c, 0.55 + 0.45 * glow); mgraphics.set_line_width(1.8 + Math.min(2, g * 0.12));
        mgraphics.move_to(ax, ay); mgraphics.line_to(bx, by); mgraphics.stroke();
        col(c, 0.7 + 0.3 * glow);
        mgraphics.ellipse(bx - 2.5 - 3 * glow, by - 2.5 - 3 * glow, 5 + 6 * glow, 5 + 6 * glow);
        mgraphics.fill();
    }
    // playhead with trailing wedge
    if (D.play >= 0) {
        var t;
        for (t = 0; t < 16; t++) {
            a = (D.play - t * 1.4) / N * 2 * Math.PI - Math.PI / 2;
            mgraphics.set_source_rgba(1, 1, 1, 0.22 * (1 - t / 16));
            mgraphics.set_line_width(2);
            mgraphics.move_to(cx + Math.cos(a) * r0 * 0.5, cy + Math.sin(a) * r0 * 0.5);
            mgraphics.line_to(cx + Math.cos(a) * R, cy + Math.sin(a) * R);
            mgraphics.stroke();
        }
        a = D.play / N * 2 * Math.PI - Math.PI / 2;
        mgraphics.set_source_rgba(1, 1, 1, 0.95);
        mgraphics.set_line_width(1.6);
        mgraphics.move_to(cx + Math.cos(a) * r0 * 0.5, cy + Math.sin(a) * r0 * 0.5);
        mgraphics.line_to(cx + Math.cos(a) * (R + 3), cy + Math.sin(a) * (R + 3));
        mgraphics.stroke();
    }
    // centre hub
    col([0.5, 0.8, 1], 0.25); mgraphics.ellipse(cx - 5, cy - 5, 10, 10); mgraphics.fill();
    col([0.5, 0.8, 1], 0.9); mgraphics.ellipse(cx - 2, cy - 2, 4, 4); mgraphics.fill();
}

// ------------------------------------------------------------------ LFO
function paintLfo(w, h) {
    var i, n = D.lfo.length, pad = 8, top = 4, sh = h - 30, mid = top + sh * 0.5, ah = sh * 0.42, pts = [];
    bg(w, h);
    mgraphics.set_line_width(1);
    mgraphics.set_source_rgba(1, 1, 1, 0.12);
    mgraphics.move_to(pad, mid); mgraphics.line_to(w - pad, mid); mgraphics.stroke();
    if (n > 2) {
        for (i = 0; i < n; i++) { pts.push([pad + i * (w - 2 * pad) / (n - 1), mid - nz(D.lfo[i]) * ah]); }
        for (i = 1; i < n; i++) {
            col(hsv(0.55 + 0.4 * i / n, 0.7, 1), 0.2);
            mgraphics.rectangle(pts[i - 1][0], Math.min(mid, pts[i][1]), pts[i][0] - pts[i - 1][0] + 0.8, Math.abs(mid - pts[i][1]));
            mgraphics.fill();
        }
        glowLine(pts, [0.45, 0.95, 0.8], 1.6);
    }
    // playhead + live value dot
    if (D.lpos[0] >= 0) {
        var px = pad + (w - 2 * pad) * nz(D.lpos[0]), py = mid - nz(D.lpos[1]) * ah;
        mgraphics.set_source_rgba(1, 1, 1, 0.18); mgraphics.set_line_width(5);
        mgraphics.move_to(px, top); mgraphics.line_to(px, top + sh); mgraphics.stroke();
        mgraphics.set_source_rgba(1, 1, 1, 0.9); mgraphics.set_line_width(1.2);
        mgraphics.move_to(px, top); mgraphics.line_to(px, top + sh); mgraphics.stroke();
        col([1, 0.85, 0.3], 1); mgraphics.ellipse(px - 3.5, py - 3.5, 7, 7); mgraphics.fill();
    }
    // target readout: base tick (white) and live modulated position (dot)
    var by = h - 14, bx0 = pad, bw = w - 2 * pad;
    mgraphics.set_source_rgba(1, 1, 1, 0.1);
    mgraphics.rectangle(bx0, by, bw, 4); mgraphics.fill();
    if (D.tgt[0] !== "Off") {
        var b0 = bx0 + bw * nz(D.tgt[1]), b1 = bx0 + bw * nz(D.tgt[2]), act = D.tgt[3] > 0;
        col([0.4, 0.9, 1], act ? 0.45 : 0.15);
        mgraphics.rectangle(Math.min(b0, b1), by, Math.abs(b1 - b0) + 1, 4); mgraphics.fill();
        mgraphics.set_source_rgba(1, 1, 1, 0.9); mgraphics.set_line_width(1.5);
        mgraphics.move_to(b0, by - 2); mgraphics.line_to(b0, by + 6); mgraphics.stroke();
        col([1, 0.85, 0.3], act ? 1 : 0.35); mgraphics.ellipse(b1 - 3, by - 1, 6, 6); mgraphics.fill();
        text(String(D.tgt[0]).replace(/_/g, " "), pad, h - 3, 8, [0.8, 0.9, 1], 0.8);
    } else {
        text("no target", pad, h - 3, 8, [0.6, 0.6, 0.65], 0.7);
    }
    text(D.lfolabel, pad, 12, 8, [0.85, 0.9, 1], 0.75);
}

// ------------------------------------------------------------------ MOD PANEL (vertical, scrollable)
var HIST = {}, SCR = 0, SCRF = 0, lastY = 0, dragging = false, ROWH = 29;
function ctext(s, cx, cy, size, c, a) {
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(size);
    var m = mgraphics.text_measure(s), mw = (m && m.length) ? m[0] : s.length * size * 0.5, mh = (m && m.length > 1) ? m[1] : size;
    text(s, cx - mw / 2, cy + mh / 3, size, c, a);
}
function maxScroll() {
    var s = getSize(), rows = Math.floor(s[1] / ROWH), n = Math.floor(D.mods.length / 4);
    return Math.max(0, n - rows);
}
function setScroll(v) {
    SCRF = Math.max(0, Math.min(maxScroll(), v));
    SCR = Math.round(SCRF);
    mgraphics.redraw();
}
// Scrolling uses per-event drag deltas (not absolute positions), so dragging outside the
// object or a lost mouse-up can no longer make the list jump.
function onclick(x, y) {
    var s = getSize();
    if (MODE !== "mods") { return; }
    dragging = false;
    if (x > s[0] - 12 && maxScroll() > 0) {
        setScroll(Math.round(SCRF) + (y < s[1] / 2 ? -1 : 1));
        return;
    }
    lastY = y; dragging = true;
}
function ondrag(x, y, but) {
    if (MODE !== "mods" || !dragging) { return; }
    if (but === 0) { dragging = false; return; }
    var s = getSize(), yc = Math.max(0, Math.min(s[1], y)), dy = lastY - yc;
    lastY = yc;
    if (Math.abs(dy) > 60) { return; }
    setScroll(SCRF + dy / 18);
}
function onwheel(x, y, dx, dy) {
    if (MODE !== "mods") { return; }
    setScroll(Math.round(SCRF) + (dy > 0 ? -1 : 1));
}
function paintMods(w, h) {
    var n = Math.floor(D.mods.length / 4), i, k, rows = Math.floor(h / ROWH), scrollable = n > rows;
    mgraphics.set_source_rgba(0.012, 0.012, 0.014, 1);
    mgraphics.rectangle(0, 0, w, h); mgraphics.fill();
    if (n === 0) {
        SCR = 0; SCRF = 0;
        ctext("no active modulation", w / 2, h / 2, 9, [0.55, 0.55, 0.6], 0.85);
        return;
    }
    SCRF = Math.max(0, Math.min(Math.max(0, n - rows), SCRF)); SCR = Math.round(SCRF);
    var seen = {}, rw = scrollable ? w - 12 : w, r;
    // keep trails for every modulated parameter (even if scrolled out of view)
    for (i = 0; i < n; i++) {
        var nm0 = String(D.mods[i * 4]).replace(/_/g, " ");
        seen[nm0] = 1;
        if (!HIST[nm0]) { HIST[nm0] = []; }
        HIST[nm0].push(nz(D.mods[i * 4 + 2]));
        if (HIST[nm0].length > 60) { HIST[nm0].shift(); }
    }
    for (r = 0; r < rows && SCR + r < n; r++) {
        i = SCR + r;
        var nm = String(D.mods[i * 4]).replace(/_/g, " "), b = nz(D.mods[i * 4 + 1]),
            lf = String(D.mods[i * 4 + 3]), y0 = r * ROWH + 2, bx = 4, bw = rw - 8, by0 = y0 + 11, bh = 15;
        text(nm, bx, y0 + 8, 8, [0.85, 0.9, 1], 0.95);
        var lt = "LFO " + lf;
        text(lt, rw - 4 - 5 * lt.length, y0 + 8, 7, [1, 0.85, 0.3], 0.95);
        mgraphics.set_source_rgba(0.08, 0.08, 0.09, 1);
        mgraphics.rectangle(bx, by0, bw, bh); mgraphics.fill();
        var byl = by0 + bh * (1 - b), xx;
        mgraphics.set_source_rgba(1, 1, 1, 0.35); mgraphics.set_line_width(1);
        for (xx = bx; xx < bx + bw; xx += 6) { mgraphics.move_to(xx, byl); mgraphics.line_to(xx + 3, byl); mgraphics.stroke(); }
        var Hh = HIST[nm], m = Hh.length, pts = [];
        for (k = 0; k < m; k++) { pts.push([bx + bw * (k / 59), by0 + bh * (1 - Hh[k])]); }
        if (m > 1) { glowLine(pts, [0.4, 0.95, 0.85], 1.2); }
        var ex = pts[m - 1][0], ey = pts[m - 1][1];
        col([1, 0.85, 0.3], 1); mgraphics.ellipse(ex - 2.5, ey - 2.5, 5, 5); mgraphics.fill();
    }
    if (scrollable) {
        var th = Math.max(14, h * rows / n), ty = (h - th) * (SCR / Math.max(1, n - rows));
        mgraphics.set_source_rgba(1, 1, 1, 0.08); mgraphics.rectangle(w - 8, 0, 6, h); mgraphics.fill();
        mgraphics.set_source_rgba(0.4, 0.9, 1, 0.65); mgraphics.rectangle(w - 8, ty, 6, th); mgraphics.fill();
        text("^", w - 8, 9, 8, [0.8, 0.9, 1], 0.6);
        text("v", w - 8, h - 2, 8, [0.8, 0.9, 1], 0.6);
    }
    var key;
    for (key in HIST) { if (!seen[key]) { delete HIST[key]; } }
}

function paint() {
    var s = getSize(), w = s[0], h = s[1];
    if (MODE === "wave") { paintWave(w, h); }
    else if (MODE === "env") { paintEnv(w, h); }
    else if (MODE === "beat") { paintBeat(w, h); }
    else if (MODE === "mods") { paintMods(w, h); }
    else { paintLfo(w, h); }
}

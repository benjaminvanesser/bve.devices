// diskmovie.js  --  Max for Live "Disk Movie" engine
// Reads the bytes of files on disk and turns them into picture (raw RGB), sound (interleaved 8-bit stereo PCM)
// and a subtitle (file name). Keep this file next to diskmovie.amxd (or freeze the device).
//
// Messages:  bang (one tick)      root <path>     restart      next (jump to next file)
//            frame <w> <h>        speed <x>            bufms <ms>      sr <hz>
//            stutter <0/1>        stutsize <pct>  skip <path>
// Outlets :  0 jit_matrix  1 subtitle ("set ...")  2 buffer~ messages  3 metro interval (ms)
//            4 groove~ loop start (ms)  5 groove~ loop end (ms)

inlets = 1;
outlets = 6;

var W = 96, H = 72;
var MAXDEPTH = 12;
var MIN_VIDEO_MS = 60;                 // video frames are skipped if ticks come faster than this

var SR = 44100;
var bufMs = 100;
var spd = 1;
var stutterOn = false;
var stutFrac = 0.12;                   // stutter slice as a fraction of the buffer

var mat = new JitterMatrix("diskmov", 4, "char", W, H);
var abuf = new Buffer("diskaudio");

var rootPath = null, stack = [], cur = null;
var curName = "", curDir = "", curSize = 0;
var lastVideo = 0;
var sliceA = 0, sliceB = 0;

var skipList = ["/proc", "/dev", "/sys", "/System", "/private/var/vm", "/Volumes",
                "/cores", "/Library/Caches", "C:/Windows", "C:/$Recycle.Bin",
                "C:/System Volume Information", "C:/pagefile.sys"];

// ---------- parameters ----------
function sr(x) { if (x > 0) { SR = x; updateTimer(); } }

function bufms(x) {
    bufMs = Math.max(10, Math.min(5000, x));
    updateTimer();
}

function speed(x) {
    spd = x;
    updateTimer();
}

function stutsize(pct) { stutFrac = Math.max(0.01, Math.min(1, pct / 100)); }

function frame(w, h) {
    W = Math.max(8, w | 0);
    H = Math.max(8, h | 0);
    mat = new JitterMatrix("diskmov", 4, "char", W, H);
}

// The metro runs exactly as long as one pass through the buffer takes at the current speed,
// so recording, playback and picture all stay in step.
function updateTimer() {
    var s = Math.max(0.05, Math.abs(spd));
    outlet(3, Math.max(10, Math.min(20000, bufMs / s)));
}

function setLoop(a, b) {
    sliceA = a; sliceB = b;
    outlet(4, 0);
    outlet(5, b);
    outlet(4, a);
}

function stutter(on) {
    stutterOn = !!on;
    if (stutterOn) pickSlice();
    else setLoop(0, bufMs);
}

function pickSlice() {
    var len = bufMs * stutFrac * (0.5 + Math.random());
    len = Math.max(4, Math.min(bufMs, len));
    var a = Math.random() * (bufMs - len);
    setLoop(a, a + len);
}

// ---------- file walking ----------
function clean(p) {
    p = String(p);
    if (/^[^\/:]{2,}:\//.test(p)) p = p.replace(/^[^\/:]+:/, "");   // "Macintosh HD:/x" -> "/x"
    if (p.length > 1 && p.charAt(p.length - 1) === "/") p = p.slice(0, -1);
    return p;
}

function root() {
    var p = clean(arrayfromargs(arguments).join(" "));
    // a dropped file instead of a folder: use the folder that contains it
    if (list(p).length === 0 && p.lastIndexOf("/") > 0) p = p.slice(0, p.lastIndexOf("/"));
    rootPath = p;
    restart();
    post("diskmovie: root =", rootPath, "\n");
}

function skip() { skipList.push(clean(arrayfromargs(arguments).join(" "))); }

function restart() {
    if (cur) { try { cur.close(); } catch (e) {} }
    cur = null;
    stack = [];
}

function list(path) {
    var out = [];
    try {
        var f = new Folder(path);
        while (!f.end) { out.push({ name: f.filename, type: f.filetype }); f.next(); }
        f.close();
    } catch (e) {}
    return out;
}

function isSkipped(p) {
    for (var i = 0; i < skipList.length; i++) if (p === skipList[i]) return true;
    return false;
}

function openNext() {
    if (cur) { try { cur.close(); } catch (e) {} cur = null; }
    var guard = 0;
    while (guard++ < 20000) {
        if (stack.length === 0) stack.push({ path: rootPath, items: list(rootPath), i: 0 });
        var top = stack[stack.length - 1];
        if (top.i >= top.items.length) { stack.pop(); continue; }
        var e = top.items[top.i++];
        if (!e.name || e.name.charAt(0) === ".") continue;
        var full = (top.path === "/" ? "" : top.path) + "/" + e.name;

        if (e.type === "fold") {
            if (!isSkipped(full) && stack.length < MAXDEPTH)
                stack.push({ path: full, items: list(full), i: 0 });
            continue;
        }
        try {
            var f = new File(full, "read");
            if (f.isopen && f.eof > 16) {
                cur = f; curName = e.name; curDir = top.path; curSize = f.eof;
                return true;
            }
            f.close();
        } catch (err) {}
    }
    return false;
}

// Jump to the next file right now.
// Normally this also records and draws a frame from it immediately;
// during stutter nothing is recorded, so only the subtitle updates.
function next() {
    if (!rootPath) rootPath = (max.os === "windows") ? "C:" : "/";
    if (!openNext()) { outlet(1, "set", "(nothing readable here)"); return; }
    if (stutterOn) {
        subtitle("[STUTTER " + Math.round(sliceA) + "-" + Math.round(sliceB) + " ms]");
    } else {
        lastVideo = 0;          // make sure the picture is redrawn, not throttled
        bang();
    }
}

// ---------- one tick ----------
function subtitle(extra) {
    var pct = cur ? Math.min(100, Math.round(100 * cur.position / curSize)) : 0;
    outlet(1, "set", (extra ? extra + "  " : "") + curName + "   (" + curDir + " - " + pct + "%)");
}

function drawVideo(bytes) {
    var k = 0;
    for (var y = 0; y < H; y++) {
        for (var x = 0; x < W; x++) {
            mat.setcell2d(x, y, 255, bytes[k] || 0, bytes[k + 1] || 0, bytes[k + 2] || 0);
            k += 3;
        }
    }
    outlet(0, "jit_matrix", mat.name);
}

function bang() {
    if (!rootPath) rootPath = (max.os === "windows") ? "C:" : "/";

    // 1. keep the buffer exactly as long as the metro period (resize first, write next tick)
    var N = Math.round(bufMs * SR / 1000);
    if (abuf.framecount() !== N) {
        outlet(2, "sizeinsamps", N);
        setLoop(0, bufMs);
        return;
    }

    // 2. stutter: stop recording, loop a random slice of what is already in the buffer
    if (stutterOn) {
        pickSlice();
        subtitle("[STUTTER " + Math.round(sliceA) + "-" + Math.round(sliceB) + " ms]");
        return;
    }

    // 3. record one buffer's worth of file data
    if (!cur || cur.position >= cur.eof) {
        if (!openNext()) { outlet(1, "set", "(nothing readable here)"); return; }
    }
    // bytes are read as interleaved 8-bit stereo PCM: L R L R ...
    var need = Math.max(2 * N, W * H * 3);
    var bytes = cur.readbytes(need);
    if (!bytes) bytes = [];

    var L = new Array(N), R = new Array(N), sumL = 0, sumR = 0, cntL = 0, cntR = 0, i, v;
    for (i = 0; i < N; i++) {
        v = bytes[2 * i];
        if (v === undefined) L[i] = null; else { L[i] = (v - 128) / 128; sumL += L[i]; cntL++; }
        v = bytes[2 * i + 1];
        if (v === undefined) R[i] = null; else { R[i] = (v - 128) / 128; sumR += R[i]; cntR++; }
    }
    var meanL = cntL ? sumL / cntL : 0, meanR = cntR ? sumR / cntR : 0;   // remove DC per channel
    for (i = 0; i < N; i++) {
        L[i] = (L[i] === null) ? 0 : L[i] - meanL;
        R[i] = (R[i] === null) ? 0 : R[i] - meanR;
    }
    abuf.poke(1, 0, L);
    abuf.poke(2, 0, R);

    // 4. picture + subtitle
    var now = new Date().getTime();
    if (now - lastVideo >= MIN_VIDEO_MS) {
        lastVideo = now;
        drawVideo(bytes);
    }
    subtitle("");
}

inlets = 1;
outlets = 3;

var arr = [];

// Leonardo numbers
var L = [1, 1];

// heap state
var heaps = [];
var heapCount = 0;
var i = 0;

// phases: build | extract | play
var phase = "idle";
var playIndex = 0;

// options
var active = false;
var loopEnabled = false;
var descending = false;

// output accumulator
var outIndex = -1;
var outValue = null;

// ---------- INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    if (arr.length < 2) return;

    buildLeonardo();
    phase = "build";
    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }
function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    heaps = [];
    heapCount = 0;
    i = 0;
    phase = "idle";
    playIndex = 0;
    active = false;
}

// ---------- LEONARDO ----------
function buildLeonardo() {
    while (L[L.length - 1] < 256) {
        L.push(L[L.length - 1] + L[L.length - 2] + 1);
    }
}

// ---------- COMPARE ----------
function cmp(a, b) {
    return descending ? a > b : a < b;
}

// ---------- OUTPUT CONTROL ----------
function consider(idx, val) {
    if (outValue === null) {
        outIndex = idx;
        outValue = val;
        return;
    }

    if (descending) {
        if (val > outValue) {
            outIndex = idx;
            outValue = val;
        }
    } else {
        if (val < outValue) {
            outIndex = idx;
            outValue = val;
        }
    }
}

function flush() {
    if (outValue === null) return;
    outlet(0, arr);
    outlet(1, outIndex);
    outlet(2, outValue);
}

// ---------- STEP ----------
function bang() {
    if (!active || arr.length < 2) return;

    outValue = null;
    outIndex = -1;

    // ---------- PLAY ----------
    if (phase === "play") {
        if (playIndex >= arr.length) {
            if (!loopEnabled) {
                outlet(0, "done");
                active = false;
            } else {
                list.apply(this, arr);
            }
            return;
        }

        consider(playIndex, arr[playIndex]);
        playIndex++;
        flush();
        return;
    }

    // ---------- BUILD ----------
    if (phase === "build") {
        if (i >= arr.length) {
            phase = "extract";
            flush();
            return;
        }

        heaps.push({ size: 1, index: i });
        heapCount++;
        sift(heapCount - 1);

        consider(i, arr[i]);
        i++;
        flush();
        return;
    }

    // ---------- EXTRACT ----------
    if (phase === "extract") {
        if (heapCount === 0) {
            phase = "play";
            playIndex = 0;
            flush();
            return;
        }

        var h = heaps.pop();
        heapCount--;

        var end = arr.length - heapCount - 1;
        var idx = h.index;

        var tmp = arr[idx];
        arr[idx] = arr[end];
        arr[end] = tmp;

        consider(end, arr[end]);

        if (h.size > 1) {
            heaps.push({ size: h.size - 1, index: idx });
            heaps.push({ size: h.size - 2, index: idx + L[h.size - 2] + 1 });
            heapCount += 2;
        }

        flush();
        return;
    }
}

// ---------- SIFT ----------
function sift(h) {
    var root = heaps[h].index;

    while (h > 0) {
        var parent = heaps[h - 1].index;
        if (!cmp(arr[root], arr[parent])) break;

        var tmp = arr[root];
        arr[root] = arr[parent];
        arr[parent] = tmp;

        consider(parent, arr[parent]);

        root = parent;
        h--;
    }
}

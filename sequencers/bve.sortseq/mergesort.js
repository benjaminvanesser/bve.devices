autowatch = 1;

inlets = 1;
outlets = 3;

// ---------------- STATE ----------------
var arr = [];
var aux = [];

var width = 1;        // current merge width
var left = 0;         // left index of merge
var mid = 0;
var right = 0;

var i = 0;            // left pointer
var j = 0;            // right pointer
var k = 0;            // write index

var phase = "idle";   // idle | merge | play
var playIndex = 0;

var active = false;
var loopEnabled = false;
var descending = false;

// ---------------- LIST INPUT ----------------
function list() {
    arr = arrayfromargs(arguments);
    aux = arr.slice(0);
    reset();
    active = true;
    phase = "merge";
}

// ---------------- OPTIONS ----------------
function loop(v) {
    loopEnabled = v !== 0;
}

function desc(v) {
    descending = v !== 0;
}

// ---------------- TRANSPORT ----------------
function pause() {
    active = false;
}

function play() {
    if (arr.length > 1) active = true;
}

// ---------------- RESET ----------------
function reset() {
    width = 1;
    left = 0;
    mid = 0;
    right = 0;
    i = j = k = 0;
    playIndex = 0;
    phase = "idle";
    active = false;
}

// ---------------- STEP ----------------
function bang() {
    if (!active || arr.length < 2) return;

    // ---------- PLAYBACK ----------
    if (phase === "play") {
        if (playIndex >= arr.length) {
            if (!loopEnabled) {
                outlet(0, "done");
                active = false;
                return;
            }
            reset();
            active = true;
            phase = "merge";
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- START NEW MERGE PASS ----------
    if (left >= arr.length) {
        width *= 2;
        left = 0;

        if (width >= arr.length) {
            phase = "play";
            playIndex = 0;
            return;
        }
    }

    // ---------- INIT MERGE ----------
    if (k === 0) {
        mid = Math.min(left + width, arr.length);
        right = Math.min(left + 2 * width, arr.length);
        i = left;
        j = mid;
        k = left;
        aux = arr.slice(0);
    }

    // ---------- MERGE STEP ----------
    var takeLeft;

    if (i < mid && j < right) {
        takeLeft = descending
            ? aux[i] > aux[j]
            : aux[i] < aux[j];
    } else {
        takeLeft = i < mid;
    }

    if (takeLeft) {
        arr[k] = aux[i];
        outlet(0, arr);
        outlet(1, k);
        outlet(2, aux[i]);
        i++;
    } else {
        arr[k] = aux[j];
        outlet(0, arr);
        outlet(1, k);
        outlet(2, aux[j]);
        j++;
    }

    k++;

    // ---------- FINISH THIS MERGE ----------
    if (k >= right) {
        left += 2 * width;
        k = 0;
    }
}

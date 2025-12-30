autowatch = 1;

inlets = 1;
outlets = 3;

// ---------------- STATE ----------------
var arr = [];
var counts = {};
var keys = [];

var index = 0;        // scanning index
var keyIndex = 0;     // index into sorted keys
var writeIndex = 0;   // index writing back into arr

var phase = "idle";   // idle | count | rebuild | play
var playIndex = 0;

var active = false;
var loopEnabled = false;
var descending = false;

// ---------------- LIST INPUT ----------------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    active = true;
    phase = "count";
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
    if (arr.length > 0) active = true;
}

// ---------------- RESET ----------------
function reset() {
    counts = {};
    keys = [];
    index = 0;
    keyIndex = 0;
    writeIndex = 0;
    playIndex = 0;
    phase = "idle";
    active = false;
}

// ---------------- STEP ----------------
function bang() {
    if (!active || arr.length === 0) return;

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
            phase = "count";
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- COUNT PHASE ----------
    if (phase === "count") {
        if (index >= arr.length) {
            keys = Object.keys(counts).map(Number);
            keys.sort(function (a, b) {
                return descending ? b - a : a - b;
            });
            phase = "rebuild";
            return;
        }

        var v = arr[index];
        counts[v] = (counts[v] || 0) + 1;

        outlet(0, arr);
        outlet(1, index);
        outlet(2, v);

        index++;
        return;
    }

    // ---------- REBUILD PHASE ----------
    if (phase === "rebuild") {
        if (keyIndex >= keys.length) {
            phase = "play";
            playIndex = 0;
            return;
        }

        var k = keys[keyIndex];

        if (counts[k] > 0) {
            arr[writeIndex] = k;

            outlet(0, arr);
            outlet(1, writeIndex);
            outlet(2, k);

            counts[k]--;
            writeIndex++;
            return;
        }

        keyIndex++;
        return;
    }
}

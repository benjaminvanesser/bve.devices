autowatch = 1;

inlets = 1;
outlets = 3;

// ---------------- STATE ----------------
var arr = [];

var i = 1;              // outer index
var j = 0;              // inner index
var key = 0;

var phase = "idle";     // idle | sort | insert | play
var playIndex = 0;

var active = false;
var loopEnabled = false;
var descending = false;

// ---------------- LIST INPUT ----------------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    active = true;
    phase = "sort";
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
    i = 1;
    j = 0;
    key = 0;
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

            // "done" only if NOT looping
            if (!loopEnabled) {
                outlet(0, "done");
                active = false;
                return;
            }

            // restart sorting if looping
            reset();
            active = true;
            phase = "sort";
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);

        playIndex++;
        return;
    }

    // ---------- SORT STEP ----------
    if (phase === "sort") {
        if (i >= arr.length) {
            phase = "play";
            playIndex = 0;
            return;
        }

        key = arr[i];
        j = i - 1;
        phase = "insert";
        return;
    }

    // ---------- INSERT STEP ----------
    var shouldMove = descending
        ? (j >= 0 && arr[j] < key)
        : (j >= 0 && arr[j] > key);

    if (shouldMove) {
        arr[j + 1] = arr[j];

        outlet(0, arr);
        outlet(1, j);
        outlet(2, arr[j]);

        j--;
        return;
    }

    // ---------- PLACE KEY ----------
    arr[j + 1] = key;

    outlet(0, arr);
    outlet(1, j + 1);
    outlet(2, key);

    i++;
    phase = "sort";
}

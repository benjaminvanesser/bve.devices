autowatch = 1;

inlets = 1;
outlets = 3;

// ---------------- STATE ----------------
var arr = [];

var gap = 0;
var i = 0;
var j = 0;
var temp = 0;

var phase = "idle";   // idle | sort | insert | play
var playIndex = 0;

var active = false;
var loopEnabled = false;
var descending = false;

// ---------------- LIST INPUT ----------------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    gap = Math.floor(arr.length / 2);
    i = gap;
    phase = "sort";
    active = true;
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
    gap = 0;
    i = 0;
    j = 0;
    temp = 0;
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
            gap = Math.floor(arr.length / 2);
            i = gap;
            phase = "sort";
            active = true;
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);

        playIndex++;
        return;
    }

    // ---------- GAP REDUCTION ----------
    if (gap <= 0) {
        phase = "play";
        playIndex = 0;
        return;
    }

    // ---------- START NEW INSERT ----------
    if (phase === "sort") {
        if (i >= arr.length) {
            gap = Math.floor(gap / 2);
            i = gap;
            return;
        }

        temp = arr[i];
        j = i;
        phase = "insert";
        return;
    }

    // ---------- INSERT STEP ----------
    var shouldMove = descending
        ? (j >= gap && arr[j - gap] < temp)
        : (j >= gap && arr[j - gap] > temp);

    if (shouldMove) {
        arr[j] = arr[j - gap];

        outlet(0, arr);
        outlet(1, j);
        outlet(2, arr[j]);

        j -= gap;
        return;
    }

    // ---------- PLACE TEMP ----------
    arr[j] = temp;

    outlet(0, arr);
    outlet(1, j);
    outlet(2, temp);

    i++;
    phase = "sort";
}

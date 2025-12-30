autowatch = 1;

inlets = 1;
outlets = 3;

// ---------------- STATE ----------------
var arr = [];
var stack = [];

var low = 0;
var high = 0;
var i = 0;
var j = 0;
var pivot = 0;
var pivotIndex = 0;

var phase = "idle"; // idle | partition | play
var playIndex = 0;

var active = false;
var loopEnabled = false;
var descending = false;

// ---------------- LIST INPUT ----------------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    stack.push([0, arr.length - 1]);
    phase = "partition";
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
    stack = [];
    low = high = i = j = pivot = pivotIndex = 0;
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
            stack.push([0, arr.length - 1]);
            phase = "partition";
            active = true;
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- LOAD NEXT PARTITION ----------
    if (i === 0 && j === 0) {
        if (stack.length === 0) {
            phase = "play";
            playIndex = 0;
            return;
        }

        var range = stack.pop();
        low = range[0];
        high = range[1];

        if (low >= high) return;

        pivot = arr[high];
        pivotIndex = low;
        j = low;
        i = 1;
        return;
    }

    // ---------- PARTITION STEP ----------
    var condition = descending
        ? arr[j] > pivot
        : arr[j] < pivot;

    if (condition) {
        var temp = arr[j];
        arr[j] = arr[pivotIndex];
        arr[pivotIndex] = temp;

        outlet(0, arr);
        outlet(1, pivotIndex);
        outlet(2, arr[pivotIndex]);

        pivotIndex++;
        j++;
        return;
    }

    j++;

    // ---------- FINISH PARTITION ----------
    if (j >= high) {
        var t = arr[pivotIndex];
        arr[pivotIndex] = arr[high];
        arr[high] = t;

        outlet(0, arr);
        outlet(1, pivotIndex);
        outlet(2, arr[pivotIndex]);

        // push subranges
        stack.push([low, pivotIndex - 1]);
        stack.push([pivotIndex + 1, high]);

        i = j = 0;
        return;
    }
}

inlets = 1;
outlets = 3;

var arr = [];

// shaker state
var left = 0;
var right = 0;
var i = 0;
var dir = 1; // 1 = forward, -1 = backward
var swapped = false;

// phases
var phase = "sort"; // sort | play
var playIndex = 0;

// options
var active = false;
var loopEnabled = false;
var descending = false;

// ---------- INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();

    if (arr.length < 2) return;

    left = 0;
    right = arr.length - 1;
    i = left;
    dir = 1;
    swapped = false;

    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }

function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    left = 0;
    right = 0;
    i = 0;
    dir = 1;
    swapped = false;
    phase = "sort";
    playIndex = 0;
    active = false;
}

// ---------- STEP ----------
function bang() {
    if (!active || arr.length < 2) return;

    // ---------- PLAYBACK ----------
    if (phase === "play") {
        if (playIndex >= arr.length) {
            if (!loopEnabled) {
                outlet(0, "done");
                active = false;
                return;
            } else {
                list.apply(this, arr);
                return;
            }
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- SORT DONE ----------
    if (left >= right) {
        phase = "play";
        playIndex = 0;
        return;
    }

    // ---------- SAFE COMPARE ----------
    var next = i + dir;

    var shouldSwap = descending
        ? arr[i] < arr[next]   // descending
        : arr[i] > arr[next];  // ascending

    if (shouldSwap) {
        var tmp = arr[i];
        arr[i] = arr[next];
        arr[next] = tmp;
        swapped = true;
    }

    // ---------- OUTPUT (ONE PER BANG) ----------
    outlet(0, arr);
    outlet(1, i);
    outlet(2, arr[i]);

    // ---------- MOVE ----------
    i += dir;

    // ---------- END OF PASS ----------
    if (dir === 1 && i >= right) {
        if (!swapped) {
            left = right; // fully sorted
            return;
        }
        right--;
        dir = -1;
        i = right;
        swapped = false;
    }
    else if (dir === -1 && i <= left) {
        left++;
        dir = 1;
        i = left;
        swapped = false;
    }
}

inlets = 1;
outlets = 3;

var arr = [];

// odd-even state
var phase = "even"; // even | odd | play
var i = 0;
var swapped = false;

// playback
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

    phase = "even";
    i = 0;
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
    phase = "even";
    i = 0;
    swapped = false;
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
            } else {
                list.apply(this, arr);
            }
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- SORT STEP ----------
    if (i + 1 >= arr.length) {
        if (phase === "even") {
            phase = "odd";
            i = 1;
            return;
        } else {
            if (!swapped) {
                phase = "play";
                playIndex = 0;
                return;
            }
            swapped = false;
            phase = "even";
            i = 0;
            return;
        }
    }

    var shouldSwap = descending
        ? arr[i] < arr[i + 1]   // descending
        : arr[i] > arr[i + 1];  // ascending

    if (shouldSwap) {
        var tmp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = tmp;
        swapped = true;
    }

    // ---------- OUTPUT (ONE VALUE ONLY) ----------
    outlet(0, arr);
    outlet(1, i);
    outlet(2, arr[i]);

    i += 2;
}

inlets = 1;
outlets = 3;

var arr = [];
var i = 0;        // outer index
var j = 1;        // inner index
var mode = "sort"; // "sort" or "play"
var playIndex = 0;
var active = false;

var loopEnabled = false;
var descending = false;

// ---------- INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    if (arr.length < 2) return;
    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }
function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    i = 0;
    j = 1;
    playIndex = 0;
    mode = "sort";
    active = false;
}

// ---------- STEP ----------
function bang() {
    if (!active || arr.length < 2) return;

    // ---------- PLAYBACK ----------
    if (mode === "play") {
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

    // ---------- SORTING ----------
    if (i >= arr.length - 1) {
        mode = "play";
        playIndex = 0;
        return;
    }

    // ---------- COMPARE & SWAP ----------
    var shouldSwap = descending ? arr[i] < arr[j] : arr[i] > arr[j];
    if (shouldSwap) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    // ---------- OUTPUT SINGLE STEP ----------
    outlet(0, arr);
    outlet(1, i);
    outlet(2, arr[i]);

    // ---------- ADVANCE INDICES ----------
    j++;
    if (j >= arr.length) {
        i++;
        j = i + 1;
    }
}

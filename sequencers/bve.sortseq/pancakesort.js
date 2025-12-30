inlets = 1;
outlets = 3;

var arr = [];
var n = 0;

// Pancake sort state
var currSize = 0;       // current size of unsorted portion
var maxIndex = 0;       // index of max/min element
var flipStage = 0;      // 0: find max, 1: flip to top, 2: flip to correct position

// playback
var playIndex = 0;

// phases: sort | play
var phase = "idle";

// options
var active = false;
var loopEnabled = false;
var descending = false;

// ---------- INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    n = arr.length;
    reset();
    if (n < 2) return;

    currSize = n;
    phase = "sort";
    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }
function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    currSize = 0;
    maxIndex = 0;
    flipStage = 0;
    playIndex = 0;
    phase = "idle";
    active = false;
}

// ---------- UTILITY: FIND MAX/MIN ----------
function findExtIndex(size) {
    var idx = 0;
    for (var i = 1; i < size; i++) {
        if (descending ? arr[i] > arr[idx] : arr[i] < arr[idx]) {
            idx = i;
        }
    }
    return idx;
}

// ---------- UTILITY: FLIP PREFIX ----------
function flip(k) {
    for (var i = 0, j = k; i < j; i++, j--) {
        var tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
    }
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

    // ---------- SORT ----------
    if (phase === "sort") {
        if (currSize <= 1) {
            phase = "play";
            playIndex = 0;
            return;
        }

        // Stage 0: find max/min
        if (flipStage === 0) {
            maxIndex = findExtIndex(currSize);
            flipStage = 1;
            return; // one bang for finding
        }

        // Stage 1: flip max/min to top if needed
        if (flipStage === 1) {
            if (maxIndex !== 0) {
                flip(maxIndex);
                outlet(0, arr);
                outlet(1, maxIndex);
                outlet(2, arr[maxIndex]);
            }
            flipStage = 2;
            return; // one bang for flip to top
        }

        // Stage 2: flip max/min to correct position
        flip(currSize - 1);
        outlet(0, arr);
        outlet(1, currSize - 1);
        outlet(2, arr[currSize - 1]);

        currSize--;
        flipStage = 0; // reset for next max/min
        return;
    }
}

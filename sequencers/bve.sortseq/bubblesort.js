inlets = 1;
outlets = 3;

var arr = [];
var i = 0;             // outer loop index
var j = 0;             // inner loop index
var mode = "sort";     // "sort" or "play"
var playIndex = 0;
var active = false;
var loopEnabled = false;
var descending = false;

// ---------- LIST INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    active = true;
}

// ---------- LOOP OPTION ----------
function loop(val) {
    loopEnabled = val ? true : false;
}

// ---------- SORT DIRECTION ----------
function desc(val) {
    descending = val ? true : false;
}

// ---------- PAUSE ----------
function pause() {
    active = false;
}

// ---------- PLAY / RESUME ----------
function play() {
    if (!active && arr.length > 1) active = true;
}

// ---------- RESET ----------
function reset() {
    i = 0;
    j = 0;
    playIndex = 0;
    mode = "sort";
    active = false;
}

// ---------- BANG STEP ----------
function bang() {
    if (!active || arr.length < 2) return;

    // ---------- PLAYBACK OF SORTED LIST ----------
    if (mode === "play") {
        if (playIndex >= arr.length) {
            if (loopEnabled) {
                reset();
                active = true;
                return;
            } else {
                active = false;
                outlet(0, "done");
                return;
            }
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);

        playIndex++;
        return;
    }

    // ---------- SORTING COMPLETE ----------
    if (i >= arr.length - 1) {
        mode = "play";
        playIndex = 0;
        return;
    }

    // ---------- END OF INNER LOOP ----------
    if (j >= arr.length - i - 1) {
        j = 0;
        i++;
        return;
    }

    // ---------- COMPARE & SWAP ----------
    if (descending) {
        if (arr[j] < arr[j + 1]) {  // swap if left < right
            var temp = arr[j];
            arr[j] = arr[j + 1];
            arr[j + 1] = temp;
        }
    } else {
        if (arr[j] > arr[j + 1]) {  // swap if left > right
            var temp = arr[j];
            arr[j] = arr[j + 1];
            arr[j + 1] = temp;
        }
    }

    // ---------- SINGLE OUTPUT ----------
    outlet(0, arr);
    outlet(1, j);
    outlet(2, arr[j]);

    j++;
}

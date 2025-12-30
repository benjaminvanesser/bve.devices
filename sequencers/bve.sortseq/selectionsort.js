inlets = 1;
outlets = 3;

var arr = [];
var i = 0;             // outer loop index
var j = 0;             // inner loop index
var minMaxIndex = 0;   // index of min (or max)
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
    minMaxIndex = 0;
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

    // ---------- SELECTION SORT STEP ----------
    if (j === i) minMaxIndex = i;

    if (j < arr.length) {
        // check if current element is more extreme
        if (descending) {
            if (arr[j] > arr[minMaxIndex]) minMaxIndex = j;
        } else {
            if (arr[j] < arr[minMaxIndex]) minMaxIndex = j;
        }

        // Output current comparison
        outlet(0, arr);
        outlet(1, j);
        outlet(2, arr[j]);

        j++;
        return;
    }

    // ---------- SWAP MIN/MAX WITH POSITION i ----------
    if (minMaxIndex !== i) {
        var temp = arr[i];
        arr[i] = arr[minMaxIndex];
        arr[minMaxIndex] = temp;
    }

    i++;
    j = i; // reset inner loop
}

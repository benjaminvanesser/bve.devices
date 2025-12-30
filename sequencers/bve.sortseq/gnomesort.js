inlets = 1;
outlets = 3;

var arr = [];
var index = 0;        // current gnome sort index
var mode = "sort";    // "sort" or "play"
var playIndex = 0;
var active = false;
var loopEnabled = false;
var descending = false;

// ---------- LIST INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    if (arr.length < 2) return;
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
    index = 0;
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
            if (!loopEnabled) {
                outlet(0, "done");
                active = false;
                return;
            } else {
                reset();
                active = true;
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
    if (index >= arr.length) {
        mode = "play";
        playIndex = 0;
        return;
    }

    // ---------- GNOME SORT LOGIC ----------
    if (index > 0) {
        var shouldSwap = descending ? arr[index - 1] < arr[index] : arr[index - 1] > arr[index];
        if (shouldSwap) {
            var temp = arr[index];
            arr[index] = arr[index - 1];
            arr[index - 1] = temp;
            index--; // step backward
        } else {
            index++; // step forward
        }
    } else {
        index++; // step forward from start
    }

    // ---------- SINGLE OUTPUT PER BANG ----------
    var outIndex = Math.min(index, arr.length - 1);
    outlet(0, arr);
    outlet(1, outIndex);
    outlet(2, arr[outIndex]);
}

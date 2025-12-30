autowatch = 1;

inlets = 1;
outlets = 3;

// ---------------- STATE ----------------
var arr = [];
var n = 0;

var heapSize = 0;
var buildIndex = 0;

var root = 0;
var child = 0;
var swapIndex = 0;

var phase = "idle"; // idle | build | sift | extract | play
var playIndex = 0;

var active = false;
var loopEnabled = false;
var descending = false;

// ---------------- LIST INPUT ----------------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    n = arr.length;
    heapSize = n;
    buildIndex = Math.floor(n / 2) - 1;
    phase = "build";
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
    n = 0;
    heapSize = 0;
    buildIndex = 0;
    root = child = swapIndex = 0;
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
            n = arr.length;
            heapSize = n;
            buildIndex = Math.floor(n / 2) - 1;
            phase = "build";
            active = true;
            return;
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- BUILD HEAP ----------
    if (phase === "build") {
        if (buildIndex < 0) {
            phase = "extract";
            return;
        }

        root = buildIndex;
        phase = "sift";
        return;
    }

    // ---------- SIFT DOWN ----------
    if (phase === "sift") {
        child = root * 2 + 1;

        if (child >= heapSize) {
            buildIndex--;
            phase = "build";
            return;
        }

        swapIndex = root;

        if (
            (descending && arr[child] < arr[swapIndex]) ||
            (!descending && arr[child] > arr[swapIndex])
        ) {
            swapIndex = child;
        }

        if (
            child + 1 < heapSize &&
            ((descending && arr[child + 1] < arr[swapIndex]) ||
             (!descending && arr[child + 1] > arr[swapIndex]))
        ) {
            swapIndex = child + 1;
        }

        if (swapIndex === root) {
            buildIndex--;
            phase = "build";
            return;
        }

        var temp = arr[root];
        arr[root] = arr[swapIndex];
        arr[swapIndex] = temp;

        outlet(0, arr);
        outlet(1, swapIndex);
        outlet(2, arr[swapIndex]);

        root = swapIndex;
        return;
    }

    // ---------- EXTRACT ----------
    if (phase === "extract") {
        if (heapSize <= 1) {
            phase = "play";
            playIndex = 0;
            return;
        }

        var t = arr[0];
        arr[0] = arr[heapSize - 1];
        arr[heapSize - 1] = t;

        outlet(0, arr);
        outlet(1, heapSize - 1);
        outlet(2, arr[heapSize - 1]);

        heapSize--;
        root = 0;
        phase = "sift";
        return;
    }
}

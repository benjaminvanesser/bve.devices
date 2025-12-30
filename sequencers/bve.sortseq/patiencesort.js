inlets = 1;
outlets = 3;

var arr = [];

// patience piles
var piles = [];
var pileTops = [];

// merge state
var sorted = [];
var mergeIndex = 0;

// phases: build | merge | play
var phase = "idle";

// build index
var i = 0;

// playback
var playIndex = 0;

// options
var active = false;
var loopEnabled = false;
var descending = false;

// single-output accumulator
var outIndex = -1;
var outValue = null;

// ---------- INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    if (arr.length < 2) return;

    phase = "build";
    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }
function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    piles = [];
    pileTops = [];
    sorted = [];
    i = 0;
    mergeIndex = 0;
    playIndex = 0;
    phase = "idle";
    active = false;
}

// ---------- COMPARE ----------
function cmp(a, b) {
    return descending ? a > b : a < b;
}

// ---------- OUTPUT CONTROL ----------
function consider(idx, val) {
    if (outValue === null) {
        outIndex = idx;
        outValue = val;
        return;
    }

    if (descending) {
        if (val > outValue) {
            outIndex = idx;
            outValue = val;
        }
    } else {
        if (val < outValue) {
            outIndex = idx;
            outValue = val;
        }
    }
}

function flush() {
    if (outValue === null) return;
    outlet(0, arr);
    outlet(1, outIndex);
    outlet(2, outValue);
}

// ---------- STEP ----------
function bang() {
    if (!active || arr.length < 2) return;

    outValue = null;
    outIndex = -1;

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

        consider(playIndex, arr[playIndex]);
        playIndex++;
        flush();
        return;
    }

    // ---------- BUILD PILES ----------
    if (phase === "build") {
        if (i >= arr.length) {
            phase = "merge";
            return;
        }

        var v = arr[i];
        var placed = false;

        for (var p = 0; p < pileTops.length; p++) {
            if (cmp(v, pileTops[p])) {
                piles[p].push(v);
                pileTops[p] = v;
                placed = true;
                break;
            }
        }

        if (!placed) {
            piles.push([v]);
            pileTops.push(v);
        }

        consider(i, v);
        i++;
        flush();
        return;
    }

    // ---------- MERGE PILES ----------
    if (phase === "merge") {
        if (piles.length === 0) {
            arr = sorted.slice();
            phase = "play";
            playIndex = 0;
            return;
        }

        var bestPile = 0;
        var bestVal = piles[0][piles[0].length - 1];

        for (var k = 1; k < piles.length; k++) {
            var val = piles[k][piles[k].length - 1];
            if (cmp(val, bestVal)) {
                bestVal = val;
                bestPile = k;
            }
        }

        sorted.push(bestVal);
        piles[bestPile].pop();

        if (piles[bestPile].length === 0) {
            piles.splice(bestPile, 1);
        }

        arr[sorted.length - 1] = bestVal;
        consider(sorted.length - 1, bestVal);
        flush();
        return;
    }
}

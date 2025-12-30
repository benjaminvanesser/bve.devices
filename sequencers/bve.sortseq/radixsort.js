inlets = 1;
outlets = 3;

var arr = [];
var buckets = [];
var aux = [];

// radix state
var exp = 1;
var maxExp = 1;
var digitIndex = 0;

// phases: distribute | collect | reverse | play
var phase = "distribute";

// indices
var i = 0;
var b = 0;
var w = 0;

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

    var maxVal = Math.max.apply(null, arr);
    maxExp = 1;
    while (Math.floor(maxVal / maxExp) > 0) maxExp *= 10;

    exp = 1;
    initBuckets();
    phase = "distribute";
    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }

function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    buckets = [];
    aux = [];
    i = 0;
    b = 0;
    w = 0;
    playIndex = 0;
    exp = 1;
    phase = "distribute";
    active = false;
}

// ---------- INIT BUCKETS ----------
function initBuckets() {
    buckets = [];
    for (var d = 0; d < 10; d++) buckets[d] = [];
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
                list.apply(this, arr); // restart sorting loop
                return;
            }
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- DISTRIBUTE ----------
    if (phase === "distribute") {
        if (i >= arr.length) {
            phase = "collect";
            b = 0;
            w = 0;
            return;
        }

        var digit = Math.floor(arr[i] / exp) % 10;
        buckets[digit].push(arr[i]);

        outlet(0, arr);
        outlet(1, i);
        outlet(2, arr[i]);

        i++;
        return;
    }

    // ---------- COLLECT ----------
    if (phase === "collect") {
        if (b >= 10) {
            exp *= 10;

            if (exp >= maxExp) {
                if (descending) {
                    phase = "reverse";
                    i = 0;
                    return;
                }
                phase = "play";
                playIndex = 0;
                return;
            }

            initBuckets();
            i = 0;
            phase = "distribute";
            return;
        }

        if (buckets[b].length > 0) {
            var val = buckets[b].shift();
            arr[w] = val;

            outlet(0, arr);
            outlet(1, w);
            outlet(2, val);

            w++;
            return;
        }

        b++;
        return;
    }

    // ---------- FINAL REVERSE (DESCENDING) ----------
    if (phase === "reverse") {
        if (i >= Math.floor(arr.length / 2)) {
            phase = "play";
            playIndex = 0;
            return;
        }

        var j = arr.length - 1 - i;
        var tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;

        outlet(0, arr);
        outlet(1, i);
        outlet(2, arr[i]);

        i++;
        return;
    }
}

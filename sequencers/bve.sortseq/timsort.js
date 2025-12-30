inlets = 1;
outlets = 3;

var arr = [];
var RUN = 4; // small for visibility
var runs = [];
var runIndex = 0;

// insertion sort state
var i = 0;
var j = 0;
var key = null;
var inserting = false;

// merge state
var left = 0, mid = 0, right = 0;
var aux = [];
var m_i = 0, m_j = 0, m_k = 0;
var merging = false;

// phases: runSort | merge | play
var phase = "runSort";
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

    buildRuns();
    runIndex = 0;
    startRunSort();
    active = true;
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }

function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    runs = [];
    runIndex = 0;
    inserting = false;
    merging = false;
    phase = "runSort";
    playIndex = 0;
    active = false;
}

// ---------- BUILD RUNS ----------
function buildRuns() {
    runs = [];
    for (var i = 0; i < arr.length; i += RUN) {
        runs.push({ l: i, r: Math.min(i + RUN - 1, arr.length - 1) });
    }
}

// ---------- START RUN INSERTION ----------
function startRunSort() {
    var r = runs[runIndex];
    i = r.l + 1;
    inserting = false;
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
                list.apply(this, arr); // restart
                return;
            }
        }

        outlet(0, arr);
        outlet(1, playIndex);
        outlet(2, arr[playIndex]);
        playIndex++;
        return;
    }

    // ---------- RUN INSERTION SORT ----------
    if (phase === "runSort") {
        var r = runs[runIndex];

        if (!inserting) {
            if (i > r.r) {
                runIndex++;
                if (runIndex >= runs.length) {
                    phase = "merge";
                    return;
                }
                startRunSort();
                return;
            }

            key = arr[i];
            j = i - 1;
            inserting = true;
        }

        var shouldShift = descending
            ? (j >= r.l && arr[j] < key)
            : (j >= r.l && arr[j] > key);

        if (shouldShift) {
            arr[j + 1] = arr[j];
            outlet(0, arr);
            outlet(1, j);
            outlet(2, arr[j]);
            j--;
            return;
        }

        arr[j + 1] = key;
        outlet(0, arr);
        outlet(1, j + 1);
        outlet(2, key);

        inserting = false;
        i++;
        return;
    }

    // ---------- MERGE ----------
    if (phase === "merge") {
        if (!merging) {
            if (runs.length <= 1) {
                phase = "play";
                playIndex = 0;
                return;
            }

            var a = runs.shift();
            var b = runs.shift();

            left = a.l;
            mid = a.r;
            right = b.r;

            aux = arr.slice(left, right + 1);
            m_i = 0;
            m_j = mid - left + 1;
            m_k = left;
            merging = true;
        }

        var takeLeft = false;

        if (m_i <= mid - left && m_j <= right - left) {
            takeLeft = descending
                ? aux[m_i] > aux[m_j]
                : aux[m_i] < aux[m_j];
        } else if (m_i <= mid - left) {
            takeLeft = true;
        }

        var val;
        if (takeLeft) {
            val = aux[m_i++];
        } else {
            val = aux[m_j++];
        }

        arr[m_k] = val;
        outlet(0, arr);
        outlet(1, m_k);
        outlet(2, val);
        m_k++;

        if (m_k > right) {
            merging = false;
            runs.unshift({ l: left, r: right });
        }
    }
}

inlets = 1;
outlets = 3;

var arr = [];
var bstRoot = null;
var sortedList = [];
var buildIndex = 0;       // Index in original array for insertion into BST
var traversalStack = [];   // Stack for in-order traversal
var traversalNode = null;  // Current node for traversal
var playIndex = 0;

var phase = "build";      // build | traverse | play
var active = false;
var loopEnabled = false;
var descending = false;

// ---------- BST Node ----------
function Node(value) {
    this.value = value;
    this.left = null;
    this.right = null;
}

// ---------- INPUT ----------
function list() {
    arr = arrayfromargs(arguments);
    reset();
    if (arr.length < 2) return;
    active = true;
    phase = "build";
}

// ---------- OPTIONS ----------
function loop(v) { loopEnabled = !!v; }
function desc(v) { descending = !!v; }
function pause() { active = false; }
function play() { if (!active && arr.length > 1) active = true; }

// ---------- RESET ----------
function reset() {
    bstRoot = null;
    sortedList = [];
    buildIndex = 0;
    traversalStack = [];
    traversalNode = null;
    playIndex = 0;
    phase = "build";
    active = false;
}

// ---------- STEP ----------
function bang() {
    if (!active || arr.length < 2) return;

    // ---------- PLAYBACK ----------
    if (phase === "play") {
        if (playIndex >= sortedList.length) {
            if (!loopEnabled) {
                outlet(0, "done");
                active = false;
                return;
            } else {
                list.apply(this, arr);
                return;
            }
        }

        outlet(0, sortedList);
        outlet(1, playIndex);
        outlet(2, sortedList[playIndex]);
        playIndex++;
        return;
    }

    // ---------- BUILD BST ----------
    if (phase === "build") {
        if (buildIndex >= arr.length) {
            // BST built, prepare in-order traversal
            phase = "traverse";
            traversalNode = bstRoot;
            traversalStack = [];
            sortedList = [];
            return;
        }

        var value = arr[buildIndex];
        if (!bstRoot) {
            bstRoot = new Node(value);
        } else {
            insertStep(bstRoot, value);
        }

        // Output current state
        outlet(0, arr);
        outlet(1, buildIndex);
        outlet(2, arr[buildIndex]);

        buildIndex++;
        return;
    }

    // ---------- IN-ORDER TRAVERSAL ----------
    if (phase === "traverse") {
        // Step through traversal stack
        while (traversalNode || traversalStack.length > 0) {
            while (traversalNode) {
                traversalStack.push(traversalNode);
                traversalNode = traversalNode.left;
            }
            if (traversalStack.length > 0) {
                traversalNode = traversalStack.pop();
                sortedList.push(traversalNode.value);
                traversalNode = traversalNode.right;

                // Output traversal step
                outlet(0, sortedList);
                outlet(1, sortedList.length - 1);
                outlet(2, sortedList[sortedList.length - 1]);
                return; // one output per bang
            }
        }

        // Traversal finished
        if (descending) sortedList.reverse();
        phase = "play";
        playIndex = 0;
        return;
    }
}

// ---------- STEPWISE INSERTION INTO BST ----------
function insertStep(node, value) {
    if (descending) {
        if (value > node.value) {
            if (!node.left) node.left = new Node(value);
            else insertStep(node.left, value);
        } else {
            if (!node.right) node.right = new Node(value);
            else insertStep(node.right, value);
        }
    } else {
        if (value < node.value) {
            if (!node.left) node.left = new Node(value);
            else insertStep(node.left, value);
        } else {
            if (!node.right) node.right = new Node(value);
            else insertStep(node.right, value);
        }
    }
}

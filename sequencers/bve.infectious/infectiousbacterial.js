autowatch = 1;
inlets = 1;
outlets = 4; // extra outlet for red/blue empty state

/* ---------------------- LCD SIZE ---------------------- */
var width = 165;
var height = 165;
var centerX = width / 2;

/* ---------------------- STATE ---------------------- */
var balls = [];
var nextID = 0;

/* movement */
var speed = 3.0;

/* timing */
var whiteLife = 1000;
var blueLife = 10000;

/* drop/spawn */
var dropInterval = 30;
var spawnQueue = [];
var dropTask = null;

/* ball size */
var ballSize = 3;

/* mitosis */
var mitosisInterval = 2000;
var maxRed = 50;
var mitosisTask = null;

/* scheduler */
var task = new Task(update, this);
task.interval = 30;
task.repeat();

/* ---------------------- BALL ---------------------- */
function Ball(x, y, vx, vy, color) {
    this.id = nextID++;
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.radius = ballSize;
    this.color = color;

    this.birthTime = Date.now();
    this.stateTime = this.birthTime;
    this.speedFactor = random(0.8,1.2);

    this.isBlue = (color === "blue");
}

/* ---------------------- MESSAGES ---------------------- */
function infect() {
    spawnQueue.push({type:"red", remaining:2});
    startDropTask();
    startMitosis();
}

function antibiotics(amount) {
    if (amount <= 0) return;
    spawnQueue.push({type:"blue", remaining:amount});
    startDropTask();
}

function drop(interval) {
    dropInterval = Math.max(10, interval);
    if (dropTask) dropTask.interval = dropInterval;
}

function mitosis_time(ms) {
    mitosisInterval = Math.max(100, ms);
    if (mitosisTask) mitosisTask.interval = mitosisInterval;
}

function reset() {
    balls = [];
    spawnQueue = [];

    if (dropTask) dropTask.cancel();
    dropTask = null;

    if (mitosisTask) dropTask.cancel();
    mitosisTask = null;
}

/* ---------------------- PARAM SETTERS ---------------------- */
function setSpeed(v) {
    if (v instanceof Array) v = v[0];
    speed = Math.max(0, parseFloat(v));
}

function white_life(v) { whiteLife = v; }
function blue_life(v) { blueLife = v; }

function size(v) {
    if (v instanceof Array) v = v[0];
    ballSize = Math.max(1, parseFloat(v));
    for (var i = 0; i < balls.length; i++) {
        balls[i].radius = ballSize;
    }
}

/* ---------------------- DROP/SPAWN TASK ---------------------- */
function startDropTask() {
    if (!dropTask) {
        dropTask = new Task(spawnOne, this);
        dropTask.interval = dropInterval;
        dropTask.repeat();
    }
}

function spawnOne() {
    if (spawnQueue.length === 0) {
        if (dropTask) {
            dropTask.cancel();
            dropTask = null;
        }
        return;
    }

    var entry = spawnQueue[0];
    if (entry.remaining <= 0) {
        spawnQueue.shift();
        return;
    }

    if (entry.type === "red") {
        balls.push(new Ball(
            centerX,
            height / 2,
            random(-1,1),
            random(-1,1),
            "red"
        ));
    } else if (entry.type === "blue") {
        balls.push(new Ball(
            centerX,
            10,
            random(-0.5,0.5),
            random(0.5,1.5),
            "blue"
        ));
    }

    entry.remaining--;
}

/* ---------------------- MITOSIS ---------------------- */
function startMitosis() {
    if (!mitosisTask) {
        mitosisTask = new Task(mitosisStep, this);
        mitosisTask.interval = mitosisInterval;
        mitosisTask.repeat();
    }
}

function mitosisStep() {
    var redCount = countRed();
    if (redCount >= maxRed) return;

    var newBalls = [];

    for (var i = 0; i < balls.length; i++) {
        var b = balls[i];
        if (b.color === "red" && redCount + newBalls.length < maxRed) {
            newBalls.push(
                new Ball(
                    clamp(b.x + random(-5,5), 0, width),
                    clamp(b.y + random(-5,5), 0, height),
                    random(-1,1),
                    random(-1,1),
                    "red"
                )
            );
        }
    }

    balls = balls.concat(newBalls);
}

function countRed() {
    var n = 0;
    for (var i = 0; i < balls.length; i++) {
        if (balls[i].color === "red") n++;
    }
    return n;
}

/* ---------------------- UPDATE ---------------------- */
function update() {
    var now = Date.now();
    move();
    collisions(now);
    lifecycle(now);
    draw();
    outputStats();
    outputEmptyState(); // posts every frame when a state is present
}

/* ---------------------- MOVE ---------------------- */
function move() {
    for (var i = 0; i < balls.length; i++) {
        var b = balls[i];

        b.x += b.vx * speed * b.speedFactor;
        b.y += b.vy * speed * b.speedFactor;

        if (b.x < b.radius || b.x > width - b.radius) {
            b.vx *= -1;
            b.x = clamp(b.x, b.radius, width - b.radius);
        }
        if (b.y < b.radius || b.y > height - b.radius) {
            b.vy *= -1;
            b.y = clamp(b.y, b.radius, height - b.radius);
        }
    }
}

/* ---------------------- COLLISIONS ---------------------- */
function collisions(now) {
    for (var i = 0; i < balls.length; i++) {
        for (var j = i + 1; j < balls.length; j++) {
            var a = balls[i];
            var b = balls[j];

            var dx = b.x - a.x;
            var dy = b.y - a.y;
            var dist = Math.sqrt(dx*dx + dy*dy);
            var minDist = a.radius + b.radius;

            if (dist < minDist && dist > 0) {
                var overlap = (minDist - dist) / 2;
                var nx = dx / dist;
                var ny = dy / dist;

                a.x -= nx * overlap;
                a.y -= ny * overlap;
                b.x += nx * overlap;
                b.y += ny * overlap;

                var angle = random(-0.05, 0.05);
                var cosA = Math.cos(angle);
                var sinA = Math.sin(angle);

                var avx = a.vx, avy = a.vy;
                var bvx = b.vx, bvy = b.vy;

                a.vx = bvx * cosA - bvy * sinA;
                a.vy = bvx * sinA + bvy * cosA;
                b.vx = avx * cosA - avy * sinA;
                b.vy = avx * sinA + avy * cosA;

                // blue hits red → red becomes white
                if ((a.color==="blue" && b.color==="red") ||
                    (b.color==="blue" && a.color==="red")) {

                    var red = (a.color==="red") ? a : b;
                    red.color = "white";
                    red.stateTime = now;

                    outlet(2,
                        Math.floor((red.x/width)*127),
                        Math.floor((red.y/height)*127)
                    );
                }
            }
        }
    }
}

/* ---------------------- LIFECYCLE ---------------------- */
function lifecycle(now) {
    for (var i = balls.length - 1; i >= 0; i--) {
        var b = balls[i];

        if (b.color==="white" && now - b.stateTime > whiteLife) {
            balls.splice(i,1);
            continue;
        }

        if (b.isBlue && now - b.birthTime > blueLife) {
            balls.splice(i,1);
        }
    }
}

/* ---------------------- DRAW ---------------------- */
function draw() {
    outlet(0, "frgb", 0,0,0);
    outlet(0, "paintrect", 0,0,width,height);

    for (var i=0; i<balls.length; i++) {
        var b = balls[i];

        if (b.color==="red") outlet(0,"frgb",255,0,0);
        else if (b.color==="blue") outlet(0,"frgb",0,0,255);
        else if (b.color==="white") outlet(0,"frgb",255,255,255);

        outlet(0,"paintoval",
            b.x - b.radius,
            b.y - b.radius,
            b.x + b.radius,
            b.y + b.radius
        );
    }
}

/* ---------------------- STATS ---------------------- */
function outputStats() {
    var c = {red:0, blue:0, white:0};
    for (var i=0;i<balls.length;i++) {
        c[balls[i].color]++;
    }

    var total = balls.length || 1;

    outlet(1,
        c.red/total,
        c.blue/total,
        0,
        c.white/total
    );
}

/* ---------------------- EMPTY STATE ---------------------- */
function outputEmptyState() {
    var redCount = 0;
    var blueCount = 0;

    for (var i = 0; i < balls.length; i++) {
        if (balls[i].color === "red") redCount++;
        if (balls[i].color === "blue") blueCount++;
    }

    // priority logic
    if (balls.length === 0) outlet(3, 0);
    else if (redCount === 0) outlet(3, 1);
    else if (redCount > 0 && blueCount === 0) outlet(3, 2);
}

/* ---------------------- UTILS ---------------------- */
function random(min,max) {
    return Math.random()*(max-min)+min;
}

function clamp(v,min,max) {
    return Math.max(min, Math.min(max, v));
}

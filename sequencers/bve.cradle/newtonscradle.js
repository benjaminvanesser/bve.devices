inlets = 1;
outlets = 2;

// ==================================================
// PARAMETERS
// ==================================================
var numBalls = 5;

var baseRadius = 10;
var minRadius = 6;
var maxRadius = 28;

var originX = 150;
var originY = 120;
var anchorY = 20;

var gravity = 0.0009;
var damping = 0.9995;
var restitution = 0.98;
var dt = 16;

// ==================================================
// STATE
// ==================================================
var balls = [];
var timer = null;

// ==================================================
// INITIALIZATION
// ==================================================
function initState() {
    balls = [];
    for (var i = 0; i < numBalls; i++) {
        balls.push({
            x: 0,
            vx: 0,
            mass: 1,
            radius: baseRadius
        });
    }
    recomputeRestPositions();
}

initState();
draw();

// ==================================================
// GEOMETRY
// ==================================================
function computeRadius(mass) {
    var r = baseRadius * Math.sqrt(mass);
    return Math.max(minRadius, Math.min(maxRadius, r));
}

function recomputeRestPositions() {
    var x = originX;

    for (var i = 0; i < numBalls; i++) {
        balls[i].radius = computeRadius(balls[i].mass);
        balls[i].restX = x;
        if (balls[i].x === 0) balls[i].x = x;

        if (i < numBalls - 1) {
            var nextRadius = computeRadius(balls[i + 1].mass);
            x += balls[i].radius + nextRadius + 4;
        }
    }
}

// ==================================================
// CONTROL (MAX MESSAGES)
// ==================================================
function start() {
    balls[0].vx = -4;

    if (!timer) {
        timer = new Task(update, this);
        timer.interval = dt;
        timer.repeat();
    }
}

function reset() {
    if (timer) {
        timer.cancel();
        timer = null;
    }
    initState();
    draw();
}

function mass(index, value) {
    if (index >= 0 && index < numBalls) {
        balls[index].mass = Math.max(0.01, value);
        recomputeRestPositions();
        draw(); // immediate visual update
    }
}

function loss(value) {
    restitution = Math.max(0, Math.min(1, value));
}

// ==================================================
// PHYSICS
// ==================================================
function update() {
    recomputeRestPositions();

    // restoring force toward rest positions
    for (var i = 0; i < numBalls; i++) {
        var b = balls[i];
        b.vx += gravity * (b.restX - b.x);
        b.vx *= damping;
        b.x += b.vx;
    }

    // collisions (dynamic spacing)
    for (var i = 0; i < numBalls - 1; i++) {
        var b1 = balls[i];
        var b2 = balls[i + 1];

        var minDist = b1.radius + b2.radius;
        var dist = b2.x - b1.x;

        if (dist < minDist) {
            var m1 = b1.mass;
            var m2 = b2.mass;
            var u1 = b1.vx;
            var u2 = b2.vx;

            var v1 = (
                ((m1 - m2) / (m1 + m2)) * u1 +
                ((2 * m2) / (m1 + m2)) * u2
            ) * restitution;

            var v2 = (
                ((2 * m1) / (m1 + m2)) * u1 +
                ((m2 - m1) / (m1 + m2)) * u2
            ) * restitution;

            b1.vx = v1;
            b2.vx = v2;

            var overlap = minDist - dist;
            b1.x -= overlap / 2;
            b2.x += overlap / 2;

            outlet(1, "collision", i, i + 1);
        }
    }

    draw();
}

// ==================================================
// DRAWING (LCD)
// ==================================================
function draw() {
    // black background
    outlet(0, "brgb", 0, 0, 0);
    outlet(0, "clear");

    for (var i = 0; i < numBalls; i++) {
        var b = balls[i];

        // strings (100 100 100)
        outlet(0, "frgb", 100, 100, 100);
        outlet(0, "moveto", b.restX, anchorY);
        outlet(0, "lineto", b.x, originY);

        // balls (8 194 211)
        outlet(0, "frgb", 8, 194, 211);
        outlet(0, "paintoval",
            b.x - b.radius,
            originY - b.radius,
            b.x + b.radius,
            originY + b.radius
        );
    }
}

// ==================================================
// MAX HOOK
// ==================================================
function bang() {
    draw();
}

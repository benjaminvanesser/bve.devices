autowatch = 1;
inlets = 1;
outlets = 3;

// ---------- CONFIG ----------
var SIZE = 165;
var BALL_RADIUS = 2;

var DEFAULT_BALLS = 100;
var MAX_BALLS = 300;

var ball_speed = 0.5;
var incubation = 3000;
var disease = 6000;
var FPS = 30;

var enable_collision = 0;
// ----------------------------

var balls = [];
var running = false;
var task = null;
var num_balls = DEFAULT_BALLS;

var WHITE = 0;
var BLUE  = 1;
var RED   = 2;

// ----------------------------
function Ball() {
    this.x = BALL_RADIUS + Math.random() * (SIZE - BALL_RADIUS * 2);
    this.y = BALL_RADIUS + Math.random() * (SIZE - BALL_RADIUS * 2);

    var a = Math.random() * Math.PI * 2;
    this.vx = Math.cos(a) * ball_speed;
    this.vy = Math.sin(a) * ball_speed;

    this.state = WHITE;
    this.timer = 0;
}

// ----------------------------
function start() {
    if (balls.length === 0) {
        for (var i = 0; i < num_balls; i++)
            balls.push(new Ball());
    }

    running = true;

    if (task) task.cancel();
    task = new Task(update, this);
    task.interval = 1000 / FPS;
    task.repeat();
}

// ----------------------------
function stop() {
    running = false;
    if (task) task.cancel();
}

// ----------------------------
function reset() {
    stop();
    balls = [];
    for (var i = 0; i < num_balls; i++)
        balls.push(new Ball());
    draw();
    outputStats();
}

// ----------------------------
function infect() {
    for (var i = 0; i < balls.length; i++) {
        if (balls[i].state === WHITE) {
            balls[i].state = BLUE;
            balls[i].timer = Date.now();
            break;
        }
    }
}

// ----------------------------
function set_balls(n) {
    n = Math.max(1, Math.min(MAX_BALLS, n));

    if (n > balls.length) {
        for (var i = 0; i < n - balls.length; i++)
            balls.push(new Ball());
    } else {
        balls.length = n;
    }

    num_balls = n;
}

// ----------------------------
function set_speed(s) {
    ball_speed = Math.max(0, s);
    for (var i = 0; i < balls.length; i++) {
        var a = Math.atan2(balls[i].vy, balls[i].vx);
        balls[i].vx = Math.cos(a) * ball_speed;
        balls[i].vy = Math.sin(a) * ball_speed;
    }
}

// ----------------------------
function collision(v) {
    enable_collision = v ? 1 : 0;
}

function set_incubation(ms) { incubation = ms; }
function set_disease(ms)    { disease = ms; }

// ----------------------------
function update() {
    if (!running) return;
    var now = Date.now();

    // move + wall collisions
    for (var i = 0; i < balls.length; i++) {
        var b = balls[i];

        b.x += b.vx;
        b.y += b.vy;

        if (b.x <= BALL_RADIUS || b.x >= SIZE - BALL_RADIUS) b.vx *= -1;
        if (b.y <= BALL_RADIUS || b.y >= SIZE - BALL_RADIUS) b.vy *= -1;

        if (b.state === BLUE && now - b.timer > incubation) {
            b.state = RED;
            b.timer = now;
        } else if (b.state === RED && now - b.timer > disease) {
            b.state = WHITE;
            b.timer = 0;
        }
    }

    // ball–ball collisions + infection
    for (var i = 0; i < balls.length; i++) {
        for (var j = i + 1; j < balls.length; j++) {

            var a = balls[i];
            var b = balls[j];

            var dx = b.x - a.x;
            var dy = b.y - a.y;
            var dist = Math.sqrt(dx * dx + dy * dy);
            var minDist = BALL_RADIUS * 2;

            if (dist > 0 && dist < minDist) {

                // midpoint
                var cx = (a.x + b.x) * 0.5;
                var cy = (a.y + b.y) * 0.5;

                // infection → output coords (0–127)
                if (a.state === BLUE && b.state === WHITE) {
                    b.state = BLUE;
                    b.timer = now;
                    sendCollision(cx, cy);
                }
                else if (b.state === BLUE && a.state === WHITE) {
                    a.state = BLUE;
                    a.timer = now;
                    sendCollision(cx, cy);
                }

                if (enable_collision) {
                    var nx = dx / dist;
                    var ny = dy / dist;

                    var tx = -ny;
                    var ty = nx;

                    var dpTanA  = a.vx * tx + a.vy * ty;
                    var dpTanB  = b.vx * tx + b.vy * ty;
                    var dpNormA = a.vx * nx + a.vy * ny;
                    var dpNormB = b.vx * nx + b.vy * ny;

                    a.vx = tx * dpTanA + nx * dpNormB;
                    a.vy = ty * dpTanA + ny * dpNormB;
                    b.vx = tx * dpTanB + nx * dpNormA;
                    b.vy = ty * dpTanB + ny * dpNormA;
                }
            }
        }
    }

    draw();
    outputStats();
}

// ----------------------------
function sendCollision(x, y) {
    var x127 = Math.max(0, Math.min(127, Math.floor((x / SIZE) * 127)));
    var y127 = Math.max(0, Math.min(127, Math.floor((y / SIZE) * 127)));
    outlet(2, x127, y127);
}

// ----------------------------
function draw() {
    outlet(0, "clear");
    outlet(0, "paintrect", 0, 0, SIZE, SIZE, 0, 0, 0);

    for (var i = 0; i < balls.length; i++) {
        var b = balls[i];

        if (b.state === WHITE) outlet(0, "frgb", 255, 255, 255);
        else if (b.state === BLUE) outlet(0, "frgb", 0, 0, 255);
        else outlet(0, "frgb", 255, 0, 0);

        outlet(0, "paintoval",
            b.x - BALL_RADIUS,
            b.y - BALL_RADIUS,
            b.x + BALL_RADIUS,
            b.y + BALL_RADIUS);
    }
}

// ----------------------------
function outputStats() {
    var w = 0, bl = 0, r = 0;

    for (var i = 0; i < balls.length; i++) {
        if (balls[i].state === WHITE) w++;
        else if (balls[i].state === BLUE) bl++;
        else r++;
    }

    var total = balls.length || 1;

    outlet(1,
        "white", (w / total) * 100,
        "blue",  (bl / total) * 100,
        "red",   (r / total) * 100
    );
}

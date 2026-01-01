autowatch = 1;
inlets = 1;
outlets = 2;

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
var BLUE = 1;
var RED = 2;

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
        for (var i = 0; i < num_balls; i++) {
            balls.push(new Ball());
        }
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
    for (var i = 0; i < num_balls; i++) {
        balls.push(new Ball());
    }
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
        for (var i = 0; i < n - balls.length; i++) {
            balls.push(new Ball());
        }
    } else if (n < balls.length) {
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

// ----------------------------
function set_incubation(ms) {
    incubation = ms;
}

// ----------------------------
function set_disease(ms) {
    disease = ms;
}

// ----------------------------
function update() {
    if (!running) return;
    var now = Date.now();

    // Move & wall collisions
    for (var i = 0; i < balls.length; i++) {
        var b = balls[i];

        b.x += b.vx;
        b.y += b.vy;

        if (b.x <= BALL_RADIUS) {
            b.x = BALL_RADIUS;
            b.vx *= -1;
        } else if (b.x >= SIZE - BALL_RADIUS) {
            b.x = SIZE - BALL_RADIUS;
            b.vx *= -1;
        }

        if (b.y <= BALL_RADIUS) {
            b.y = BALL_RADIUS;
            b.vy *= -1;
        } else if (b.y >= SIZE - BALL_RADIUS) {
            b.y = SIZE - BALL_RADIUS;
            b.vy *= -1;
        }

        if (b.state === BLUE && now - b.timer > incubation) {
            b.state = RED;
            b.timer = now;
        } else if (b.state === RED && now - b.timer > disease) {
            b.state = WHITE;
            b.timer = 0;
        }
    }

    // Ball–ball collisions + infection
    for (var i = 0; i < balls.length; i++) {
        for (var j = i + 1; j < balls.length; j++) {

            var a = balls[i];
            var b = balls[j];

            var dx = b.x - a.x;
            var dy = b.y - a.y;
            var dist = Math.sqrt(dx * dx + dy * dy);
            var minDist = BALL_RADIUS * 2;

            if (dist > 0 && dist < minDist) {

                // Infection
                if (a.state === BLUE && b.state === WHITE) {
                    b.state = BLUE;
                    b.timer = now;
                } else if (b.state === BLUE && a.state === WHITE) {
                    a.state = BLUE;
                    a.timer = now;
                }

                if (enable_collision) {

                    // Normal
                    var nx = dx / dist;
                    var ny = dy / dist;

                    // Tangent
                    var tx = -ny;
                    var ty = nx;

                    var dpTanA = a.vx * tx + a.vy * ty;
                    var dpTanB = b.vx * tx + b.vy * ty;

                    var dpNormA = a.vx * nx + a.vy * ny;
                    var dpNormB = b.vx * nx + b.vy * ny;

                    // Swap normal velocities
                    a.vx = tx * dpTanA + nx * dpNormB;
                    a.vy = ty * dpTanA + ny * dpNormB;
                    b.vx = tx * dpTanB + nx * dpNormA;
                    b.vy = ty * dpTanB + ny * dpNormA;

                    // Positional correction (no sticking)
                    var overlap = minDist - dist;
                    var correction = overlap / 2 + 0.01;
                    a.x -= nx * correction;
                    a.y -= ny * correction;
                    b.x += nx * correction;
                    b.y += ny * correction;
                }
            }
        }
    }

    draw();
    outputStats();
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
    var total = balls.length;

    if (total <= 0) {
        outlet(1, "white", 0, "blue", 0, "red", 0);
        return;
    }

    var w = 0, bl = 0, r = 0;

    for (var i = 0; i < total; i++) {
        if (balls[i].state === WHITE) w++;
        else if (balls[i].state === BLUE) bl++;
        else r++;
    }

    // Percentages based on CURRENT ball count
    var wp = (w / total) * 100;
    var bp = (bl / total) * 100;
    var rp = (r / total) * 100;

    outlet(1,
        "white", wp,
        "blue",  bp,
        "red",   rp
    );
}

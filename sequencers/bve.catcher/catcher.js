// catcher.js
// outlet 0 -> lcd drawing
// outlet 1 -> collision data (catcher x, ball radius) scaled 0-127
// outlet 2 -> bang when all free balls are gone

outlets = 3;

var lcd_w = 214;
var lcd_h = 165;

// ----------------------
// Parameters
// ----------------------

var catcherSpeed = 2.0;
var baseBallSpeed = 2.5;
var catcherGravity = 0.2;       
var gravityMinDist = 5;  

// ----------------------
// Catcher
// ----------------------

var catcher = {
    x: lcd_w / 2,
    y: lcd_h / 2,
    r: 8,
    vx: 0,
    color: [8, 194, 211]
};

// ----------------------
// Free balls
// ----------------------

var balls = [];
var maxBalls = 50;
var ballsEmptySent = false; // tracks if bang has been sent

// ----------------------
// Start direction alternation
// ----------------------

var lastStartRight = false; // alternates catcher direction

// ----------------------
// Task
// ----------------------

var drawTask = new Task(update, this);
drawTask.interval = 33;

// ----------------------
// Messages
// ----------------------

function start() {
    // Alternate catcher direction each time
    lastStartRight = !lastStartRight;
    catcher.vx = lastStartRight ? catcherSpeed : -catcherSpeed;

    drawTask.repeat();
}

function stop() {
    catcher.vx = 0; // only stops catcher
}

// Immediate reset
function reset() {
    balls.length = 0;
    catcher.x = lcd_w / 2;
    catcher.y = lcd_h / 2;
    catcher.vx = 0;
    ballsEmptySent = false;
}

// Set lcd size
function size(w, h) {
    lcd_w = w;
    lcd_h = h;
    catcher.x = lcd_w / 2;
    catcher.y = lcd_h / 2;
}

// ----------------------
// External controls
// ----------------------

function catcherspeed(v) {
    catcherSpeed = v;
    catcher.vx = (catcher.vx >= 0) ? v : -v;
}

function catchersize(r) {
    catcher.r = Math.max(1, r);
}

function ballspeed(v) {
    if (v <= 0) return;
    var scale = v / baseBallSpeed;
    for (var i = 0; i < balls.length; i++) {
        balls[i].vx *= scale;
        balls[i].vy *= scale;
    }
    baseBallSpeed = v;
}

// Gravity/attraction
function catchergravity(g) {
    catcherGravity = Math.max(0, g);
}

// ----------------------
// Ball creation (edges)
// ----------------------

function drop() {
    if (balls.length >= maxBalls) return;

    var speed = baseBallSpeed + (Math.random() - 0.5) * baseBallSpeed * 0.5;
    var angle = Math.random() * Math.PI * 2;

    // spawn at a random edge
    var edge = Math.floor(Math.random() * 4);
    var x, y;

    switch (edge) {
        case 0: x = 0; y = Math.random() * lcd_h; break;
        case 1: x = lcd_w; y = Math.random() * lcd_h; break;
        case 2: x = Math.random() * lcd_w; y = 0; break;
        case 3: x = Math.random() * lcd_w; y = lcd_h; break;
    }

    balls.push({
        x: x,
        y: y,
        vx: Math.cos(angle) * speed,
        vy: Math.sin(angle) * speed,
        r: Math.random() * 5 + 2
    });
}

// ----------------------
// Main loop
// ----------------------

function update() {
    moveCatcher();
    moveBalls();
    draw();
}

// ----------------------
// Motion
// ----------------------

function moveCatcher() {
    catcher.x += catcher.vx;

    if (catcher.x < catcher.r) {
        catcher.x = catcher.r;
        catcher.vx *= -1;
    } else if (catcher.x > lcd_w - catcher.r) {
        catcher.x = lcd_w - catcher.r;
        catcher.vx *= -1;
    }
}

function moveBalls() {
    for (var i = balls.length - 1; i >= 0; i--) {
        var b = balls[i];

        // Attraction toward catcher
        var dx = catcher.x - b.x;
        var dy = catcher.y - b.y;
        var dist = Math.sqrt(dx*dx + dy*dy);
        dist = Math.max(dist, gravityMinDist);

        var strength = catcherGravity * (catcher.r / dist);
        b.vx += (dx / dist) * strength;
        b.vy += (dy / dist) * strength;

        b.x += b.vx;
        b.y += b.vy;

        // Bounce off edges
        if (b.x < b.r) { b.x = b.r; b.vx *= -1; }
        else if (b.x > lcd_w - b.r) { b.x = lcd_w - b.r; b.vx *= -1; }
        if (b.y < b.r) { b.y = b.r; b.vy *= -1; }
        else if (b.y > lcd_h - b.r) { b.y = lcd_h - b.r; b.vy *= -1; }

        // Collision with catcher
        if (dist < b.r + catcher.r) {
            outputCollisionXY(b);
            balls.splice(i, 1);
        }
    }

    // Check if all balls are gone
    if (balls.length === 0) {
        if (!ballsEmptySent) {
            outlet(2, "bang");
            ballsEmptySent = true;
        }
    } else {
        ballsEmptySent = false;
    }
}

// ----------------------
// Drawing
// ----------------------

function draw() {
    outlet(0, "brgb", 0, 0, 0);
    outlet(0, "clear");

    // Grey reference line
    outlet(0, "frgb", 120, 120, 120);
    outlet(0, "moveto", 0, lcd_h / 2);
    outlet(0, "lineto", lcd_w, lcd_h / 2);

    // Catcher
    outlet(0, "frgb", catcher.color[0], catcher.color[1], catcher.color[2]);
    outlet(0, "paintoval",
        catcher.x - catcher.r,
        catcher.y - catcher.r,
        catcher.x + catcher.r,
        catcher.y + catcher.r
    );

    // Free balls
    outlet(0, "frgb", 255, 255, 255);
    for (var i = 0; i < balls.length; i++) {
        var b = balls[i];
        outlet(0, "paintoval",
            b.x - b.r,
            b.y - b.r,
            b.x + b.r,
            b.y + b.r
        );
    }
}

// ----------------------
// Collision output
// ----------------------

function outputCollisionXY(ball) {
    var sx = Math.floor((catcher.x / lcd_w) * 127);
    var sy = Math.floor((ball.r / 8) * 127); // scale max ball radius ~8
    outlet(1, sx, sy);
}

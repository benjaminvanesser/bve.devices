autowatch = 1;

inlets = 5;  // 0=start/stop/reset/resetgame, 1=left paddle, 2=right paddle, 3=mode, 4=progressive speed-up
outlets = 4;

/* ---------- CONFIG ---------- */
var W = 220;
var H = 160;

var PADDLE_W = 5;
var PADDLE_H = 30;
var BALL_R = 5;

/* ---------- STATE ---------- */
var running = false;
var mode = 1;

var lpY = H * 0.5;
var rpY = H * 0.5;

var bx = W * 0.5;
var by = H * 0.5;
var bvx = 3;
var bvy = 2;

var speedUp = 0.0; // progressive speed multiplier

var scoreL = 0;
var scoreR = 0;

/* ---------- INLET 0 COMMANDS ---------- */
function anything() {
    if (inlet !== 0) return;
    var cmd = messagename.toLowerCase();

    switch (cmd) {
        case "start":
            running = true;
            break;
        case "stop":
            running = false;
            break;
        case "reset":   // reset game + score
            running = false;
            scoreL = 0;
            scoreR = 0;
            outletScore();
            resetGame();
            break;
        case "resetgame": // reset only ball + paddles
            resetGame();
            break;
    }
}

/* ---------- FLOAT INPUTS ---------- */
function msg_float(v) {
    if (inlet === 1)
        lpY = clamp(v * H, PADDLE_H / 2, H - PADDLE_H / 2);
    else if (inlet === 2)
        rpY = clamp(v * H, PADDLE_H / 2, H - PADDLE_H / 2);
    else if (inlet === 4)
        speedUp = clamp(v, 0, 1);
}

/* ---------- INT INPUT ---------- */
function msg_int(v) {
    if (inlet === 3)
        mode = v; // 0=autoplay, 1=single, 2=two-player
}

/* ---------- TRANSPORT ---------- */
function start() { running = true; }
function stop() { running = false; }

/* ---------- GAME STEP ---------- */
function bang() {
    if (!running) {
        draw();
        return;
    }

    step();
    draw();
    outletBall();
}

function step() {
    // paddle AI
    if (mode === 0) { // autoplay both paddles
        lpY = dynamicPaddleMove(lpY, bx, by);
        rpY = dynamicPaddleMove(rpY, bx, by);
    } else if (mode === 1) { // single player AI
        rpY += (by - rpY) * 0.08;
    } // mode 2 = two-player manual

    bx += bvx;
    by += bvy;

    // top/bottom walls
    if (by - BALL_R <= 0 || by + BALL_R >= H) bvy *= -1;

    // paddle collisions
    if (bvx < 0 && bx - BALL_R <= PADDLE_W && Math.abs(by - lpY) <= PADDLE_H/2)
        bounce(lpY, 0);

    if (bvx > 0 && bx + BALL_R >= W - PADDLE_W && Math.abs(by - rpY) <= PADDLE_H/2)
        bounce(rpY, 1);

    // scoring
    if (bx + BALL_R < 0) {
        scoreR++;
        outletScore();
        resetBall();
    } else if (bx - BALL_R > W) {
        scoreL++;
        outletScore();
        resetBall();
    }
}

/* ---------- DYNAMIC AUTOPLAY ---------- */
function dynamicPaddleMove(paddleY, ballX, ballY) {
    var maxSpeed = 5;
    var diff = ballY - paddleY;

    // speed proportional to distance, clamped to maxSpeed
    var speed = diff * 0.1;
    if (speed > maxSpeed) speed = maxSpeed;
    if (speed < -maxSpeed) speed = -maxSpeed;

    // small random jitter
    speed += (Math.random() - 0.5) * 1.0;

    var newY = paddleY + speed;
    return clamp(newY, PADDLE_H/2, H - PADDLE_H/2);
}

/* ---------- PHYSICS ---------- */
function bounce(paddleY, side) {
    var norm = (by - paddleY)/(PADDLE_H/2);
    norm = clamp(norm, -1, 1);

    var angle = norm * Math.PI/3;
    var speed = Math.sqrt(bvx*bvx + bvy*bvy);
    speed *= (1 + speedUp * 0.15);

    var dir = (side === 0) ? 1 : -1;
    bvx = Math.cos(angle) * speed * dir;
    bvy = Math.sin(angle) * speed;

    outletHit(side);
}

/* ---------- DRAW ---------- */
function draw() {
    outlet(0, "clear");

    outlet(0, "frgb", 0,0,0);
    outlet(0, "paintrect", 0,0,W,H);

    outlet(0, "frgb", 255,255,255);
    drawPaddle(0, lpY);
    drawPaddle(W - PADDLE_W, rpY);

    outlet(0, "frgb", 8,194,211);
    outlet(0, "paintoval", bx - BALL_R, by - BALL_R, bx + BALL_R, by + BALL_R);
}

function drawPaddle(x, y) {
    outlet(0, "paintrect", x, y-PADDLE_H/2, x+PADDLE_W, y+PADDLE_H/2);
}

/* ---------- OUTPUT ---------- */
function outletBall() {
    outlet(1, Math.floor((bx/W)*127), Math.floor((by/H)*127));
}

function outletHit(side) {
    outlet(2, side, Math.floor((by/H)*127));
}

function outletScore() {
    outlet(3, scoreL, scoreR);
}

/* ---------- UTILS ---------- */
function resetBall() {
    bx = W/2;
    by = H/2;
    bvx = (Math.random() > 0.5 ? 1 : -1)*3;
    bvy = (Math.random()*2 - 1)*2;
}

function resetGame() {
    resetBall();
    lpY = H/2;
    rpY = H/2;
}

function clamp(v, lo, hi) {
    return Math.max(lo, Math.min(hi, v));
}

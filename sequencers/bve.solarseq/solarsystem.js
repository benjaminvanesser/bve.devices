// solarSystem.js
// Max/MSP js → lcd animated solar system
// Original style with reset and center-crossing detection

autowatch = 1;
outlets = 2;

// Canvas size
var width = 214;
var height = 165;
var cx = width / 2;
var cy = height / 2;

// Orbit scale (so Neptune stays inside LCD)
var orbitScale = 0.85;

// Global speed multiplier
var globalSpeed = 1.0;

// Planet data: radius, orbit radius, angular speed, color
var planets = [
    { r: 2,  o: 12,  s: 0.04,  c: [255, 100, 100] }, // Mercury
    { r: 3,  o: 20,  s: 0.03,  c: [255, 180, 100] }, // Venus
    { r: 3,  o: 28,  s: 0.025, c: [100, 150, 255] }, // Earth
    { r: 2,  o: 36,  s: 0.02,  c: [255, 80, 80] },   // Mars
    { r: 5,  o: 48,  s: 0.015, c: [255, 200, 120] }, // Jupiter
    { r: 4,  o: 62,  s: 0.012, c: [200, 200, 180] }, // Saturn
    { r: 3,  o: 76,  s: 0.01,  c: [150, 220, 255] }, // Uranus
    { r: 3,  o: 90,  s: 0.008, c: [100, 120, 255] }  // Neptune
];

// Dynamic state per planet
var phase = [];
var speedMul = [];

// Crossing detection memory
var prevX = [];
var prevY = [];

// Initialize arrays
for (var i = 0; i < planets.length; i++) {
    phase[i] = 0;
    speedMul[i] = 1.0;
}

// Bang = advance + draw
function bang() {
    update();
    draw();
}

// Advance phases
function update() {
    for (var i = 0; i < planets.length; i++) {
        phase[i] += planets[i].s * speedMul[i] * globalSpeed;
    }
}

// Draw the frame
function draw() {
    // Clear background
    outlet(0, "clear");
    outlet(0, "frgb", 0, 0, 0);
    outlet(0, "paintrect", 0, 0, width, height);

    // Background vertical crossing line (top half)
    drawLine();

    // Sun
    outlet(0, "frgb", 255, 220, 100);
    drawCircle(cx, cy, 8);

    // Draw planets
    for (var i = 0; i < planets.length; i++) {
        var p = planets[i];
        var orbit = p.o * orbitScale;

        var x = cx + Math.cos(phase[i]) * orbit;
        var y = cy + Math.sin(phase[i]) * orbit;

        // Orbit
        outlet(0, "frgb", 40, 40, 40);
        outlet(0, "frameoval",
            cx - orbit, cy - orbit,
            cx + orbit, cy + orbit
        );

        // Crossing detection (center of planet)
        checkCrossing(i, x, y);

        // Planet
        outlet(0, "frgb", p.c[0], p.c[1], p.c[2]);
        drawCircle(x, y, p.r);
    }
}

// Global speed control
function globalspeed(v) {
    globalSpeed = Math.max(0, v);
}

// Per-planet speed multiplier
function speed(index, value) {
    if (index >= 0 && index < speedMul.length) {
        speedMul[index] = Math.max(0, value);
    }
}

// Reset planets to starting position
function reset() {
    for (var i = 0; i < planets.length; i++) {
        phase[i] = 0;
    }
}

// Background vertical line (top half)
function drawLine() {
    outlet(0, "frgb", 100, 100, 100);
    outlet(0, "moveto", cx, cy);
    outlet(0, "lineto", cx, 0);
}

// Crossing detection using planet center
function checkCrossing(index, x, y) {
    if (prevX[index] === undefined) {
        prevX[index] = x;
        prevY[index] = y;
        return;
    }

    if (y >= cy) { // only detect in top half
        prevX[index] = x;
        prevY[index] = y;
        return;
    }

    var wasLeft = prevX[index] < cx;
    var isLeft  = x < cx;

    if (wasLeft !== isLeft) {
        outlet(1, index); // send planet index when center crosses line
    }

    prevX[index] = x;
    prevY[index] = y;
}

// Draw filled circle
function drawCircle(x, y, r) {
    outlet(0, "paintoval",
        x - r, y - r,
        x + r, y + r
    );
}

// Resize support
function size(w, h) {
    width = w;
    height = h;
    cx = width / 2;
    cy = height / 2;
}

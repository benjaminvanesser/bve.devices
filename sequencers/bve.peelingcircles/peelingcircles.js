// MaxMSP JavaScript for spinning incomplete circles with bouncing ball
// Outputs LCD drawing commands to outlet 0
// Outputs collision positions (0-127) to outlet 1
// Outputs bang when ball escapes a circle to outlet 2

inlets = 1;
outlets = 4;

// LCD dimensions
var w = 165;
var h = 165;
var cx = w / 2;
var cy = h / 2;

// Circle properties
var numCircles = 5;
var maxCircles = 10;
var baseRadius = 25;
var maxRadius = 79; // Max radius that fits in 165x165 (82.5 - small margin)
var radiusIncrement = 6;
var gapAngle = Math.PI / 3; // 60 degree gap
var rotation = 0;
var rotSpeed = 0.01;
var rotDirection = 1; // 1 for clockwise, -1 for counter-clockwise

// Base color
var baseColor = [8, 194, 211];

// Circle array - tracks which circles are still active
var circles = [];

// Ball properties
var bx = cx;
var by = cy;
var vx = 0;
var vy = 0;
var ballRadius = 3.5;
var gravity = 0.15;
var damping = 0.99;
var bounceDamping = 0.75;
var ballActive = false;
var currentCircleIndex = 0; // Which circle the ball is currently inside
var circlesRotating = false; // Control whether circles are rotating
var physicsPaused = false; // Control whether ball physics are paused

// Colors
var ballColor = [255, 255, 255];

// Initialize circles
function initCircles() {
    circles = [];
    
    // Calculate spacing to fit all circles within maxRadius
    var totalRadius = maxRadius - baseRadius;
    var spacing = (numCircles > 1) ? totalRadius / (numCircles - 1) : 0;
    
    for (var i = 0; i < numCircles; i++) {
        circles.push({
            radius: baseRadius + (i * spacing),
            active: true,
            color: generateColor(i),
            gapOffset: Math.random() * 2 * Math.PI // Random gap position for each circle
        });
    }
}

// Generate color variations around base color
function generateColor(index) {
    var variation = 30;
    var r = Math.max(0, Math.min(255, baseColor[0] + (Math.random() - 0.5) * variation));
    var g = Math.max(0, Math.min(255, baseColor[1] + (Math.random() - 0.5) * variation));
    var b = Math.max(0, Math.min(255, baseColor[2] + (Math.random() - 0.5) * variation));
    return [Math.floor(r), Math.floor(g), Math.floor(b)];
}

initCircles();

// Animation
var task = new Task(draw, this);
task.interval = 16; // ~60fps
task.repeat();

function draw() {
    // Clear LCD with black background
    outlet(0, "clear");
    outlet(0, "frgb", 0, 0, 0);
    outlet(0, "paintrect", 0, 0, w, h);
    
    // Update rotation only if circles are rotating
    if (circlesRotating) {
        rotation += rotSpeed * rotDirection;
    }
    
    // Draw all active circles (from outermost to innermost)
    for (var i = circles.length - 1; i >= 0; i--) {
        if (circles[i].active) {
            drawCircle(circles[i]);
        }
    }
    
    // Only update and draw ball if active
    if (ballActive) {
        // Update ball physics only if not paused
        if (!physicsPaused) {
            vy += gravity;
            bx += vx;
            by += vy;
        }
        
        // Check collision with current circle
        var dx = bx - cx;
        var dy = by - cy;
        var dist = Math.sqrt(dx * dx + dy * dy);
        
        // Get current circle
        if (currentCircleIndex < circles.length && circles[currentCircleIndex].active) {
            var currentCircle = circles[currentCircleIndex];
            
            // Check if ball has escaped the current circle
            if (dist > currentCircle.radius) {
                var angle = Math.atan2(dy, dx);
                
                // Normalize angle to 0-2π, accounting for circle's gap offset
                var normalizedAngle = angle - rotation - currentCircle.gapOffset;
                while (normalizedAngle < 0) normalizedAngle += 2 * Math.PI;
                while (normalizedAngle > 2 * Math.PI) normalizedAngle -= 2 * Math.PI;
                
                // Check if ball escaped through the gap
                if (normalizedAngle >= 2 * Math.PI - gapAngle) {
                    // Delete current circle and move to next
                    circles[currentCircleIndex].active = false;
                    var circleNumber = currentCircleIndex + 1; // Circle 1 is innermost
                    outlet(2, circleNumber); // Output circle number
                    currentCircleIndex++;
                    
                    // If all circles escaped, don't deactivate yet - wait for off-screen
                    if (currentCircleIndex >= circles.length) {
                        // Ball has escaped all circles, but keep it active until off-screen
                    }
                }
            }
            
            // Ball should bounce off inner wall of current circle
            if (currentCircleIndex < circles.length && dist + ballRadius > currentCircle.radius) {
                var angle = Math.atan2(dy, dx);
                
                // Normalize angle to 0-2π, accounting for circle's gap offset
                var normalizedAngle = angle - rotation - currentCircle.gapOffset;
                while (normalizedAngle < 0) normalizedAngle += 2 * Math.PI;
                while (normalizedAngle > 2 * Math.PI) normalizedAngle -= 2 * Math.PI;
                
                // Check if collision is NOT in the gap
                if (normalizedAngle < 2 * Math.PI - gapAngle) {
                    // Collision!
                    var collisionX = cx + Math.cos(angle) * currentCircle.radius;
                    var collisionY = cy + Math.sin(angle) * currentCircle.radius;
                    
                    // Output collision position as single value (0-127)
                    var collisionValue = Math.floor((normalizedAngle / (2 * Math.PI - gapAngle)) * 127);
                    outlet(1, collisionValue);
                    
                    // Calculate normal (pointing inward from circle edge)
                    var nx = -dx / dist;
                    var ny = -dy / dist;
                    
                    // Only bounce if moving towards the wall
                    var velocityTowardsWall = vx * (-nx) + vy * (-ny);
                    if (velocityTowardsWall > 0) {
                        // Reflect velocity
                        var dot = vx * nx + vy * ny;
                        vx = vx - 2 * dot * nx;
                        vy = vy - 2 * dot * ny;
                    }
                    
                    // Push ball back inside circle firmly
                    var targetDist = currentCircle.radius - ballRadius - 1;
                    bx = cx + (dx / dist) * targetDist;
                    by = cy + (dy / dist) * targetDist;
                }
            }
        }
        
        // Check if ball went off screen (deactivate)
        if (!physicsPaused && (bx < 0 || bx > w || by < 0 || by > h)) {
            ballActive = false;
            outlet(2, "done");
        }
        
        // Draw ball
        outlet(0, "frgb", ballColor[0], ballColor[1], ballColor[2]);
        outlet(0, "paintoval", bx - ballRadius, by - ballRadius, 
               bx + ballRadius, by + ballRadius);
        
        // Output ball position scaled to 0-127
        var scaledX = Math.floor((bx / w) * 127);
        var scaledY = Math.floor((by / h) * 127);
        outlet(3, scaledX, scaledY);
    }
}

function drawCircle(circle) {
    outlet(0, "frgb", circle.color[0], circle.color[1], circle.color[2]);
    outlet(0, "pensize", 3, 3);
    
    var startAngle = rotation + circle.gapOffset;
    var steps = 100;
    var angleRange = 2 * Math.PI - gapAngle;
    
    for (var i = 0; i < steps; i++) {
        var a1 = startAngle + (angleRange * i / steps);
        var a2 = startAngle + (angleRange * (i + 1) / steps);
        
        var x1 = cx + Math.cos(a1) * circle.radius;
        var y1 = cy + Math.sin(a1) * circle.radius;
        var x2 = cx + Math.cos(a2) * circle.radius;
        var y2 = cy + Math.sin(a2) * circle.radius;
        
        outlet(0, "linesegment", x1, y1, x2, y2);
    }
}

function bang() {
    draw();
}
bang.local = 1;

function spawn() {
    // Spawn ball at center with random velocity (don't regenerate circles)
    bx = cx;
    by = cy;
    vx = (Math.random() - 0.5) * 6;
    vy = (Math.random() - 0.5) * 6;
    ballActive = true;
    currentCircleIndex = 0;
    
    // Reactivate all existing circles
    for (var i = 0; i < circles.length; i++) {
        circles[i].active = true;
    }
}

function start() {
    // Start circle rotation and resume physics
    circlesRotating = true;
    physicsPaused = false;
}

function pause() {
    // Pause everything - rotation and physics
    circlesRotating = false;
    physicsPaused = true;
}

function stoprotation() {
    // Stop circle rotation only (ball physics continue)
    circlesRotating = false;
}

function reset() {
    // Reset everything to initial state
    initCircles();
    bx = cx;
    by = cy;
    vx = 0;
    vy = 0;
    ballActive = false;
    currentCircleIndex = 0;
    rotation = 0;
    circlesRotating = false;
    physicsPaused = false;
}

function setgravity(val) {
    gravity = val;
}

function setdamping(val) {
    damping = Math.max(0, Math.min(1, val));
}

function setbouncedamping(val) {
    bounceDamping = Math.max(0, Math.min(1, val));
}

function setballradius(val) {
    ballRadius = Math.max(1, val);
}

function setrotspeed(val) {
    rotSpeed = val;
}

function setdirection(val) {
    // 1 for clockwise, -1 for counter-clockwise, 0 to use sign of val
    if (val > 0) {
        rotDirection = 1;
    } else if (val < 0) {
        rotDirection = -1;
    }
}

function reversedirection() {
    rotDirection *= -1;
}

function setvelocity(x, y) {
    vx = x;
    vy = y;
}

function setnumcircles(val) {
    numCircles = Math.max(1, Math.min(maxCircles, Math.floor(val))); // Clamp between 1-10
    initCircles(); // Reinitialize circles immediately
}

function msg_int(val) {
    // Handle integer messages
}

function msg_float(val) {
    // Handle float messages
}

function stop() {
    task.cancel();
}
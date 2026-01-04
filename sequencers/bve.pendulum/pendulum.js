inlets = 1;
outlets = 5; // 0=lcd, 1=scaled hinges, 2=low-motion bang, 3=ball collisions 0-127, 4=free balls xy scaled

var MAX_HINGES = 5;
var MAX_BALLS = 10;

var lcdW = 213;
var lcdH = 160;

var hingeCount = 4;
var running = false;

var chaosAmt = 0.25;
var orbitAmt = 0.12;
var massAmt = 1.0;
var GRAVITY = 0.35;
var DAMPING = 0.995;
var ITERATIONS = 8;
var motionThreshold = 0.02;

var radius = 5; // smaller hinges

var BG = [0,0,0];
var STR = [100,100,100];
var BALL = [8,194,211];

var originX = lcdW/2;
var originY = 10;

var x = [], y = [], px = [], py = [], len = [];

var balls = []; // free balls array
var globalBallSpeed = 4;
var globalBallSize = 3;

// ======================= RESET =========================
function reset() {
    // fully reset hinges
    x.length = y.length = px.length = py.length = len.length = 0;
    originX = lcdW/2;
    originY = 10;

    var base = Math.min(lcdW,lcdH)/(hingeCount+1);
    for(var i=0;i<hingeCount;i++){
        x[i] = originX + base*0.2;
        y[i] = originY + base*(i+1);
        px[i] = x[i]; py[i] = y[i];
        len[i] = base*(0.85 + Math.random()*0.1);
    }

    // reset free balls
    balls = [];

    draw();
}

// ======================= CONTROLS ======================
function start(){
    running = true;
}

function stop(){
    running = false;
}

function hinges(v){
    v = Math.max(1, Math.min(MAX_HINGES, Math.floor(v)));
    if(v > hingeCount){
        for(var i=hingeCount;i<v;i++){
            var lastX = x[x.length-1];
            var lastY = y[y.length-1];
            var lastLen = (len.length>0)? len[len.length-1] : Math.min(lcdW,lcdH)/5;
            x.push(lastX + 5);
            y.push(lastY + lastLen);
            px.push(x[x.length-1]);
            py.push(y[y.length-1]);
            len.push(lastLen);
        }
    } else if(v < hingeCount){
        x.splice(v); y.splice(v); px.splice(v); py.splice(v); len.splice(v);
    }
    hingeCount = v;
    draw();
}

function chaos(v){ chaosAmt = v; }
function orbit(v){ orbitAmt = v; }
function mass(v){ massAmt = v; }
function size(w,h){ lcdW=w; lcdH=h; draw(); }
function resetBalls(){ balls = []; }
function setBallSpeed(v){ globalBallSpeed = v; }
function setBallSize(v){
    globalBallSize = Math.min(v,15);
    for(var i = 0; i < balls.length; i++){
        balls[i].fradius = Math.min(globalBallSize + balls[i].fmass*2,15);
    }
}

// ======================= BALLS FUNCTION =================
function setBalls(n){
    n = Math.floor(n);
    if(n < 0) n = 0;
    if(n > MAX_BALLS) n = MAX_BALLS;

    var current = balls.length;

    if(n > current){
        for(var i=0;i<n-current;i++){
            var mass = 0.5 + Math.random()*1.5;
            var fx = lcdW/2;
            var fy = 0;
            var pushX = (Math.random()*2-1)*2;
            var pushY = (Math.random()*2-1)*2;

            balls.push({
                fx: fx,
                fy: fy,
                fpx: fx - pushX,
                fpy: fy - pushY,
                fradius: Math.min(globalBallSize + mass*2, 15),
                fmass: mass
            });
        }
    } else if(n < current){
        balls.splice(n, current-n);
    }
}

// ======================= STEP ==========================
function step(){
    if(!running) return;

    for(var i=0;i<hingeCount;i++){
        var vx = (x[i]-px[i])*DAMPING;
        var vy = (y[i]-py[i])*DAMPING;
        px[i] = x[i]; py[i] = y[i];
        var speed = Math.sqrt(vx*vx + vy*vy)||0.0001;
        var boost = chaosAmt*0.05;
        x[i] += vx + vx/speed*boost;
        y[i] += vy + GRAVITY*massAmt + vy/speed*boost;
    }

    for(var i=1;i<hingeCount;i++){
        var dx = x[i]-x[0], dy=y[i]-y[0];
        var d = Math.sqrt(dx*dx+dy*dy)||0.0001;
        var tx=-dy/d, ty=dx/d;
        var vx=x[i]-px[i], vy=y[i]-py[i];
        var vmag=Math.sqrt(vx*vx+vy*vy);
        var f=orbitAmt*chaosAmt*vmag*0.15;
        x[i]+=tx*f; y[i]+=ty*f;
    }

    for(var k=0;k<ITERATIONS;k++){
        satisfy(originX,originY,0,len[0],1.0);
        for(var i=1;i<hingeCount;i++) satisfy(x[i-1],y[i-1],i,len[i],0.95);
    }

    for(var b=0;b<balls.length;b++){
        var ball=balls[b];
        var vx=(ball.fx-ball.fpx)*DAMPING;
        var vy=(ball.fy-ball.fpy)*DAMPING;

        var speed=Math.sqrt(vx*vx+vy*vy)||0.0001;
        var boost=chaosAmt*0.05;
        vx+=vx/speed*boost; vy+=vy/speed*boost;

        var mag = Math.sqrt(vx*vx + vy*vy)||0.0001;
        var scale = globalBallSpeed / mag;
        vx *= scale; vy *= scale;

        ball.fpx = ball.fx;
        ball.fpy = ball.fy;

        ball.fx+=vx;
        ball.fy+=vy;

        if(ball.fx-ball.fradius<0){ ball.fx=ball.fradius; vx=-vx; }
        if(ball.fx+ball.fradius>lcdW){ ball.fx=lcdW-ball.fradius; vx=-vx; }
        if(ball.fy-ball.fradius<0){ ball.fy=ball.fradius; vy=-vy; }
        if(ball.fy+ball.fradius>lcdH){ ball.fy=lcdH-ball.fradius; vy=-vy; }

        for(var i=0;i<hingeCount;i++){
            var dx=ball.fx-x[i], dy=ball.fy-y[i];
            var dist=Math.sqrt(dx*dx+dy*dy)||0.0001;
            if(dist<ball.fradius+radius){
                var nx=dx/dist, ny=dy/dist;
                var overlap=(ball.fradius+radius-dist);
                ball.fx+=nx*overlap; ball.fy+=ny*overlap;
                var dot=vx*nx + vy*ny;
                vx-=2*dot*nx; vy-=2*dot*ny;
                outputBallCollision(ball);
            }
        }

        for(var j=b+1;j<balls.length;j++){
            var other=balls[j];
            var dx=ball.fx-other.fx, dy=ball.fy-other.fy;
            var dist=Math.sqrt(dx*dx+dy*dy)||0.0001;
            var minDist=ball.fradius+other.fradius;
            if(dist<minDist){
                var nx=dx/dist, ny=dy/dist;
                var overlap=minDist-dist;
                ball.fx+=nx*overlap*0.5; ball.fy+=ny*overlap*0.5;
                other.fx-=nx*overlap*0.5; other.fy-=ny*overlap*0.5;

                var dvx=vx-(other.fx-other.fpx);
                var dvy=vy-(other.fy-other.fpy);
                var dot=dvx*nx + dvy*ny;
                vx-=dot*nx; vy-=dot*ny;
                var ovx=(other.fx-other.fpx)+dot*nx;
                var ovy=(other.fy-other.fpy)+dot*ny;
                other.fpx=other.fx-ovx;
                other.fpy=other.fy-ovy;
                outputBallCollision(ball);
                outputBallCollision(other);
            }
        }

        ball.fpx=ball.fx-vx;
        ball.fpy=ball.fy-vy;
        ball.fradius = Math.min(globalBallSize + ball.fmass*2, 15);
    }

    var motion=0;
    for(var i=0;i<hingeCount;i++){
        var dx=x[i]-px[i], dy=y[i]-py[i];
        motion+=dx*dx+dy*dy;
    }
    if(motion<motionThreshold) outlet(2,"bang");
}

// ================= CONSTRAINT =================
function satisfy(ax,ay,i,L,stiff){
    var dx=x[i]-ax, dy=y[i]-ay;
    var d=Math.sqrt(dx*dx+dy*dy)||0.0001;
    var diff=(d-L)/d;
    x[i]-=dx*diff*stiff;
    y[i]-=dy*diff*stiff;
}

// ================= DRAW =================
function draw(){
    outlet(0,"clear");
    outlet(0,"frgb",BG[0],BG[1],BG[2]);
    outlet(0,"paintrect",0,0,lcdW,lcdH);

    outlet(0,"frgb",STR[0],STR[1],STR[2]);
    outlet(0,"moveto",originX,originY);
    for(var i=0;i<hingeCount;i++) outlet(0,"lineto",x[i],y[i]);
    outlet(0,"frgb",BALL[0],BALL[1],BALL[2]);
    for(var i=0;i<hingeCount;i++) outlet(0,"paintoval",x[i]-radius,y[i]-radius,x[i]+radius,y[i]+radius);

    outlet(0,"frgb",255,255,255);
    for(var b=0;b<balls.length;b++){
        var ball=balls[b];
        outlet(0,"paintoval",ball.fx-ball.fradius,ball.fy-ball.fradius,ball.fx+ball.fradius,ball.fy+ball.fradius);
    }

    outputHingesScaled();
    outputBallsScaled();
}

// ================= OUTPUT =================
function outputHingesScaled(){
    var scaled=[];
    for(var i=0;i<hingeCount;i++){
        scaled.push(Math.max(0,Math.min(1,x[i]/lcdW)));
        scaled.push(Math.max(0,Math.min(1,y[i]/lcdH)));
    }
    outlet(1,scaled);
}

function outputBallsScaled(){
    var scaled=[];
    for(var i=0;i<balls.length;i++){
        var b=balls[i];
        scaled.push(Math.max(0,Math.min(1,b.fx/lcdW)));
        scaled.push(Math.max(0,Math.min(1,b.fy/lcdH)));
    }
    outlet(4, scaled);
}

function outputBallCollision(ball){
    outlet(3,[Math.floor(127*ball.fx/lcdW), Math.floor(127*ball.fy/lcdH)]);
}

// ================= BANG =================
function bang(){
    step();
    draw();
}

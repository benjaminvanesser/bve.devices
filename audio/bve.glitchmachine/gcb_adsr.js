
// Glitch Click Beats - visual (jsui / mgraphics). Receives the shared message bus.
mgraphics.init(); mgraphics.relative_coords = 0; mgraphics.autofill = 0;
inlets = 1; outlets = 0;
var COL = [[1,0.24,0.43],[1,0.69,0.13],[0.21,0.88,1],[0.56,0.42,1],[0.30,1,0.60],[1,0.42,0.84]];
var VN = ["Static Rain","Pulse Garden","Dead Pixel","Comb Alley","Ghost Tick","Brick Wall","Zipper","Hex Dump","Glass Tape","Laser Moth","Cold Fuse","Bitrot Waltz","Sub Tick","Sparks"];
var NAMES = ["KCK","SNR","HAT","PLS","GLT","ZAP"];
var P = {p_length:16,p_complexity:0.35,p_density:0.55,p_ratchet:0.3,p_attack:0,p_decay:60,p_sustain:0.6,p_release:30,p_gate:0.35,p_curve:0.2,
         p_m0:0,p_m1:0,p_m2:0,p_m3:0,p_m4:0,p_m5:0,p_variation:0,p_unipolar:0.25,p_crush:0.25};
var OFF = [0,1,2,3,5,7]; var ROT = [0,1,3,2,4,6]; function rotk(k){ return Math.floor(P.p_complexity*ROT[k] + 0.0001); } function setp(n,v){ P[n] = v; }
var cells = []; for (var ci = 0; ci < 192; ci++) cells.push(0);
var flash_ = [0,0,0,0,0,0]; var gpos_ = 0; var veff_ = 0; var tick = 0; var hits = [];
function plen(k){ var l = Math.max(4, Math.min(32, Math.round(P.p_length))); return Math.max(2, l - Math.floor(P.p_complexity*OFF[k] + 0.0001)); }
function flash(k, v){ if (v > flash_[k] + 0.05) { hits.push({k:k, v:v, t:tick}); if (hits.length > 40) hits.shift(); } flash_[k] = v; }
function scan(c){ var i = Math.floor(c/2000); if (i >= 0 && i < 192) cells[i] = (c - i*2000)/100; }
function gpos(x){ gpos_ = x; }
function veff(x){ veff_ = x; }
function p_length(v){ P.p_length = v; }
function p_complexity(v){ P.p_complexity = v; }
function p_density(v){ P.p_density = v; }
function p_ratchet(v){ P.p_ratchet = v; }
function p_attack(v){ P.p_attack = v; }
function p_decay(v){ P.p_decay = v; }
function p_sustain(v){ P.p_sustain = v; }
function p_release(v){ P.p_release = v; }
function p_gate(v){ P.p_gate = v; }
function p_curve(v){ P.p_curve = v; }
function p_m0(v){ P.p_m0 = v; }
function p_m1(v){ P.p_m1 = v; }
function p_m2(v){ P.p_m2 = v; }
function p_m3(v){ P.p_m3 = v; }
function p_m4(v){ P.p_m4 = v; }
function p_m5(v){ P.p_m5 = v; }
function p_variation(v){ P.p_variation = v; }
function p_unipolar(v){ P.p_unipolar = v; }
function p_crush(v){ P.p_crush = v; }
function dec(val){ var n = Math.floor(val/2) + 1; var v = val - 2*(n-1); return {n:n, v:v}; }
function rr(x,y,w,h,r){ mgraphics.rectangle_rounded(x,y,w,h,r,r); }
function bg(w,h){ mgraphics.set_source_rgba(0.04,0.05,0.09,1); rr(0,0,w,h,6); mgraphics.fill(); }
var DW = 282, DH = 104;
function onresize(w, h){ DW = w; DH = h; }
function getSize(){ var z = null; try { z = mgraphics.size; } catch(e) {} if (z && z[0] > 0 && z[1] > 0) return z; return [DW, DH]; }
function paint(){ try { paint_(); } catch(err) { mgraphics.set_source_rgba(0.1,0.0,0.0,1); mgraphics.rectangle(0,0,DW,DH); mgraphics.fill(); mgraphics.set_source_rgba(1,0.4,0.4,1); mgraphics.select_font_face("Arial"); mgraphics.set_font_size(8); mgraphics.move_to(4,12); mgraphics.text_path("js error: " + err.message); mgraphics.fill(); } }
var task = new Task(function(){ tick++; mgraphics.redraw(); }, this); task.interval = 33; task.repeat();
function bang(){ mgraphics.redraw(); }

var parts = [];
function envAt(t, A, D, S, G, Rl){
  var e;
  if (t < A) e = A > 0 ? t/A : 1; else if (t < A + D) e = 1 - (1-S)*((t-A)/D); else e = S;
  if (t >= G){ var e0; if (G < A) e0 = A > 0 ? G/A : 1; else if (G < A + D) e0 = 1 - (1-S)*((G-A)/D); else e0 = S; e = e0*Math.max(0, 1 - (t-G)/Math.max(Rl,1)); }
  return Math.pow(Math.max(e,0), 1 + P.p_curve*3);
}
function paint_(){
  var sz = getSize(); var w = sz[0], h = sz[1]; bg(w,h);
  var A = P.p_attack, D = P.p_decay, S = P.p_sustain, Rl = P.p_release;
  var hold = Math.max(20, (A + D + Rl)*0.35 + P.p_gate*120); var G = A + D + hold*0.0 + hold; var total = G + Rl;
  var X0 = 8, X1 = w - 8, Y0 = h - 16, Y1 = 14, N = 120;
  // grid
  mgraphics.set_line_width(1); mgraphics.set_source_rgba(0.3,0.4,0.7,0.12);
  for (var i = 0; i <= 4; i++){ var gy = Y1 + (Y0-Y1)*i/4; mgraphics.move_to(X0,gy); mgraphics.line_to(X1,gy); mgraphics.stroke(); }
  // fill
  mgraphics.set_source_rgba(0.2,0.8,1,0.12); mgraphics.move_to(X0,Y0);
  for (var n = 0; n <= N; n++){ var t = total*n/N; mgraphics.line_to(X0+(X1-X0)*n/N, Y0-(Y0-Y1)*envAt(t,A,D,S,G,Rl)); }
  mgraphics.line_to(X1,Y0); mgraphics.close_path(); mgraphics.fill();
  // glow line
  for (var pass = 3; pass >= 1; pass--){
    mgraphics.set_source_rgba(0.3,0.9,1, pass == 1 ? 0.95 : 0.12); mgraphics.set_line_width(pass == 1 ? 1.6 : pass*3);
    for (var m = 0; m <= N; m++){ var t2 = total*m/N; var px = X0+(X1-X0)*m/N, py = Y0-(Y0-Y1)*envAt(t2,A,D,S,G,Rl); if (m == 0) mgraphics.move_to(px,py); else mgraphics.line_to(px,py); }
    mgraphics.stroke();
  }
  // node handles + labels
  var nodes = [[0,0,"A"],[A,1,"D"],[A+D,S,"S"],[G,S,""],[total,0,"R"]];
  mgraphics.set_font_size(8); mgraphics.select_font_face("Arial");
  for (var q = 0; q < nodes.length; q++){
    var nx = X0+(X1-X0)*nodes[q][0]/total, ny = Y0-(Y0-Y1)*(nodes[q][1] > 0 ? envAt(nodes[q][0],A,D,S,G,Rl) : 0);
    mgraphics.set_source_rgba(1,1,1,0.9); mgraphics.arc(nx,ny,2.4,0,6.2832); mgraphics.fill();
    if (nodes[q][2] != ""){ mgraphics.set_source_rgba(0.7,0.9,1,0.9); mgraphics.move_to(Math.min(nx+4,w-12), Math.min(ny+(q==0?-5:12),h-4)); mgraphics.text_path(nodes[q][2]); mgraphics.fill(); }
  }
  // gate marker
  var gx = X0+(X1-X0)*G/total; mgraphics.set_source_rgba(1,0.7,0.2,0.5); mgraphics.set_line_width(1); mgraphics.move_to(gx,Y1); mgraphics.line_to(gx,Y0); mgraphics.stroke();
  // hit particles ride the curve in real time
  var dur = Math.max(6, Math.min(40, total/30)); // frames
  for (var i2 = hits.length-1; i2 >= 0; i2--){
    var ht = hits[i2]; var age = tick - ht.t; if (age > dur + 6){ hits.splice(i2,1); continue; }
    var fr = Math.min(1, age/dur); var tt = total*fr; var c = COL[ht.k];
    var ex = X0+(X1-X0)*fr, ey = Y0-(Y0-Y1)*envAt(tt,A,D,S,G,Rl)*ht.v;
    for (var tr = 4; tr >= 0; tr--){ var f2 = Math.max(0, fr - tr*0.015); var ey2 = Y0-(Y0-Y1)*envAt(total*f2,A,D,S,G,Rl)*ht.v;
      mgraphics.set_source_rgba(c[0],c[1],c[2],(0.8 - tr*0.15)*(1-Math.max(0,age-dur)/6)); mgraphics.arc(X0+(X1-X0)*f2, ey2, 3.2 - tr*0.5, 0, 6.2832); mgraphics.fill(); }
  }
  mgraphics.set_source_rgba(0.6,0.75,1,0.7); mgraphics.set_font_size(7); mgraphics.move_to(8,10); mgraphics.text_path("AMP ENVELOPE"); mgraphics.fill();
}

function p_mutate(v){ P.p_mutate = v; }
function p_rdecay(v){ P.p_rdecay = v; }
function p_accent(v){ P.p_accent = v; }
function p_rate(v){ P.p_rate = v; }
function p_lv0(v){ P.p_lv0 = v; }
function p_lv1(v){ P.p_lv1 = v; }
function p_lv2(v){ P.p_lv2 = v; }
function p_lv3(v){ P.p_lv3 = v; }
function p_lv4(v){ P.p_lv4 = v; }
function p_lv5(v){ P.p_lv5 = v; }
function p_tune(v){ P.p_tune = v; }
function p_reson(v){ P.p_reson = v; }
function p_square(v){ P.p_square = v; }
function p_noisemix(v){ P.p_noisemix = v; }
function p_drive(v){ P.p_drive = v; }
function p_tone(v){ P.p_tone = v; }
function p_comb(v){ P.p_comb = v; }
function p_combfb(v){ P.p_combfb = v; }
function p_combmod(v){ P.p_combmod = v; }
function p_level(v){ P.p_level = v; }

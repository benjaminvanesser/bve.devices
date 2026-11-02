
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
var DW = 160, DH = 161;
function onresize(w, h){ DW = w; DH = h; }
function getSize(){ var z = null; try { z = mgraphics.size; } catch(e) {} if (z && z[0] > 0 && z[1] > 0) return z; return [DW, DH]; }
function paint(){ try { paint_(); } catch(err) { mgraphics.set_source_rgba(0.1,0.0,0.0,1); mgraphics.rectangle(0,0,DW,DH); mgraphics.fill(); mgraphics.set_source_rgba(1,0.4,0.4,1); mgraphics.select_font_face("Arial"); mgraphics.set_font_size(8); mgraphics.move_to(4,12); mgraphics.text_path("js error: " + err.message); mgraphics.fill(); } }
var task = new Task(function(){ tick++; mgraphics.redraw(); }, this); task.interval = 33; task.repeat();
function bang(){ mgraphics.redraw(); }

function paint_(){
  var sz = getSize(); var w = sz[0], h = sz[1]; bg(w,h);
  var cx = w/2, cy = h/2, R = Math.min(w,h)/2 - 4;
  var L = Math.max(4, Math.min(32, Math.round(P.p_length)));
  // breathing background rings
  for (var k = 0; k < 6; k++){
    var r = R*(0.30 + 0.115*k); var c = COL[k]; var mute = P["p_m"+k] > 0.5; var pl = plen(k);
    mgraphics.set_line_width(1); mgraphics.set_source_rgba(c[0],c[1],c[2], mute ? 0.05 : 0.14);
    mgraphics.arc(cx,cy,r,0,6.2832); mgraphics.stroke();
    var head = ((gpos_ + rotk(k)) % pl);
    for (var s = 0; s < pl; s++){
      var ang = -1.5708 + 6.2832*s/pl; var x = cx + Math.cos(ang)*r, y = cy + Math.sin(ang)*r;
      var v = cells[k*32+s]; var d = v > 0 ? dec(v) : null;
      var near = Math.abs(((s - head + pl + pl/2) % pl) - pl/2); // distance to playhead
      var glow = Math.max(0, 1 - near/1.5);
      if (d){
        var sz = 2 + 2.6*d.v + glow*2.2; var al = mute ? 0.18 : 0.55 + 0.45*glow;
        mgraphics.set_source_rgba(c[0],c[1],c[2], al*0.25); mgraphics.arc(x,y,sz+3,0,6.2832); mgraphics.fill();
        mgraphics.set_source_rgba(c[0],c[1],c[2], al); mgraphics.arc(x,y,sz,0,6.2832); mgraphics.fill();
        for (var j = 1; j < d.n; j++){ // ratchet satellites
          var a2 = ang + (j/d.n)*(6.2832/pl)*0.9; mgraphics.set_source_rgba(1,1,1,al*0.8);
          mgraphics.arc(cx+Math.cos(a2)*r, cy+Math.sin(a2)*r, 1.1, 0, 6.2832); mgraphics.fill();
        }
      } else {
        mgraphics.set_source_rgba(c[0],c[1],c[2], 0.10 + glow*0.25); mgraphics.arc(x,y,1.1,0,6.2832); mgraphics.fill();
      }
    }
    // lane playhead tick
    var pa = -1.5708 + 6.2832*head/pl; mgraphics.set_source_rgba(1,1,1,mute?0.1:0.7); mgraphics.set_line_width(1.5);
    mgraphics.move_to(cx+Math.cos(pa)*(r-4), cy+Math.sin(pa)*(r-4)); mgraphics.line_to(cx+Math.cos(pa)*(r+4), cy+Math.sin(pa)*(r+4)); mgraphics.stroke();
  }
  // ripples
  for (var i = hits.length-1; i >= 0; i--){
    var ht = hits[i]; var age = tick - ht.t; if (age > 24){ hits.splice(i,1); continue; }
    var c2 = COL[ht.k]; var rad = R*(0.30+0.115*ht.k) + age*1.6; var a3 = (1 - age/24)*0.55*ht.v;
    mgraphics.set_source_rgba(c2[0],c2[1],c2[2],a3); mgraphics.set_line_width(1.5); mgraphics.arc(cx,cy,rad,0,6.2832); mgraphics.stroke();
  }
  // core
  var e = 0; for (var q = 0; q < 6; q++) e = Math.max(e, flash_[q]);
  mgraphics.set_source_rgba(1,1,1,0.05+0.12*e); mgraphics.arc(cx,cy,R*0.26+e*4,0,6.2832); mgraphics.fill();
  mgraphics.set_source_rgba(0.9,0.95,1,0.9); mgraphics.select_font_face("Arial"); mgraphics.set_font_size(9);
  var t = VN[Math.max(0, Math.min(13, Math.round(veff_)))]; var tm = mgraphics.text_measure(t); mgraphics.move_to(cx - tm[0]/2, cy + 6); mgraphics.text_path(t); mgraphics.fill();
  mgraphics.set_font_size(7); mgraphics.set_source_rgba(0.6,0.7,0.9,0.8); var t2 = (P.p_variation > 13.5) ? "RANDOM SHUFFLE" : "VARIATION"; var tm2 = mgraphics.text_measure(t2);
  mgraphics.move_to(cx - tm2[0]/2, cy + 16); mgraphics.text_path(t2); mgraphics.fill();
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

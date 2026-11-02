
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
var DW = 300, DH = 100;
function onresize(w, h){ DW = w; DH = h; }
function getSize(){ var z = null; try { z = mgraphics.size; } catch(e) {} if (z && z[0] > 0 && z[1] > 0) return z; return [DW, DH]; }
function paint(){ try { paint_(); } catch(err) { mgraphics.set_source_rgba(0.1,0.0,0.0,1); mgraphics.rectangle(0,0,DW,DH); mgraphics.fill(); mgraphics.set_source_rgba(1,0.4,0.4,1); mgraphics.select_font_face("Arial"); mgraphics.set_font_size(8); mgraphics.move_to(4,12); mgraphics.text_path("js error: " + err.message); mgraphics.fill(); } }
var task = new Task(function(){ tick++; mgraphics.redraw(); }, this); task.interval = 33; task.repeat();
function bang(){ mgraphics.redraw(); }

function paint_(){
  var sz = getSize(); var w = sz[0], h = sz[1]; bg(w,h);
  var L = Math.max(4, Math.min(32, Math.round(P.p_length)));
  var lx = 24, top = 5, rh = (h - 10)/6, cw = (w - lx - 5)/L;
  for (var k = 0; k < 6; k++){
    var c = COL[k]; var mute = P["p_m"+k] > 0.5; var pl = plen(k); var y = top + k*rh; var fl = flash_[k];
    mgraphics.set_source_rgba(c[0],c[1],c[2], mute ? 0.3 : 0.6 + 0.4*fl); mgraphics.select_font_face("Arial"); mgraphics.set_font_size(7);
    mgraphics.move_to(3, y + rh/2 + 3); mgraphics.text_path(NAMES[k]); mgraphics.fill();
    var head = Math.floor((gpos_ + rotk(k)) % pl);
    for (var s = 0; s < L; s++){
      var x = lx + s*cw; var inl = s < pl; var v = inl ? cells[k*32+s] : 0; var beat = (s % 4 == 0);
      var on = (inl && s == head);
      if (v > 0 && inl){
        var d = dec(v); var al = mute ? 0.2 : 0.35 + 0.65*d.v;
        if (on && !mute){ mgraphics.set_source_rgba(c[0],c[1],c[2],0.35); rr(x-1.5,y-0.5,cw+1,rh+1,3); mgraphics.fill(); }
        mgraphics.set_source_rgba(c[0],c[1],c[2],al); rr(x+0.5,y+1,cw-1.5,rh-2,2); mgraphics.fill();
        mgraphics.set_source_rgba(1,1,1,0.8*al);
        for (var j = 1; j < d.n && j < 8; j++){ var xx = x+0.5+(cw-1.5)*j/d.n; mgraphics.rectangle(xx,y+2,0.8,rh-4); mgraphics.fill(); }
      } else {
        mgraphics.set_source_rgba(c[0],c[1],c[2], inl ? (beat ? 0.14 : 0.07) : 0.02); rr(x+0.5,y+1,cw-1.5,rh-2,2); mgraphics.fill();
        if (on){ mgraphics.set_source_rgba(1,1,1,0.22); rr(x+0.5,y+1,cw-1.5,rh-2,2); mgraphics.fill(); }
      }
    }
  }
  // playhead glow column (global)
  var gx = lx + ((gpos_ % L)/L)*(w - lx - 5); mgraphics.set_line_width(1);
  for (var g = 3; g >= 1; g--){ mgraphics.set_source_rgba(1,1,1,0.05*g); mgraphics.set_line_width(g*2); mgraphics.move_to(gx,top); mgraphics.line_to(gx,h-5); mgraphics.stroke(); }
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

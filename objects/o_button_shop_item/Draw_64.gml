event_inherited();

var _margin = 4;

var _size = 8;
var _size_new = height - _margin * 2;
var _scale = 1;

var _spr = item.sprite;
draw_sprite_ext(_spr, 0, x + _margin + _size_new / 2, y + _margin + _size_new / 2,_scale,_scale,0,c_white,1);

var _name = item.name

//draw_set_font(fn_ui);

draw_text(x + _margin * 2 + _size_new, y + _margin + 2, _name);
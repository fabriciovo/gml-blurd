var _margin = 4;

var _size = 8;
var _size_new = height - _margin * 2;
var _scale = _size_new / _size;
var _spr = item.sprite
var _name = item.name

draw_set_color(hover ? c_gray : c_black);
draw_set_alpha(0.4);

draw_rectangle(x,y,x + width, y + height, 0);

draw_set_alpha(1);
draw_set_color(c_white);

draw_rectangle(x , y , x + width, y + height,1);


draw_sprite_ext(_spr, 0, x + _margin + _size_new / 2, y + _margin + _size_new / 2,_scale,_scale,0,c_white,1);


//draw_set_font(fn_ui);

draw_text(x + _margin * 2 + _size_new, y + _margin + 2, _name);
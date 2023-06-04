var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
var _spr_width = sprite_get_width(sprite_index) * 8;
var _spr_height = sprite_get_height(sprite_index) * 2;
hover = point_in_rectangle(_mouse_x, _mouse_y, x - _spr_width / 2, y - _spr_height/ 2, x + _spr_width/ 2, y + _spr_height/ 2);


if hover {
	color = c_gray
}else{
	color = c_white
}

image_blend = color
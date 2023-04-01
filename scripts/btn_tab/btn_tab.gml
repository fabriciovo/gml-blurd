// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function btn_tab(_layer_name,_sprite, _func, _list) constructor {
	layer_name = _layer_name
	func = _func
	sprite = _sprite
	list = _list
	
	height = 40
	width = 40
	hover = 0
	l_click = 0
	color = c_white
	scale = 1
	
	left_click_method = function(){
		if (array_length(list) == 0) exit
		if !layer_get_visible("Shop") exit
		instance_destroy(o_shop_item)
		layer_set_visible(o_shop.open_panel, false)
		layer_set_visible(layer_name, true)
		o_shop.open_panel = layer_name
		func()
	}
	
	step_method = function(){ 
		if (array_length(list) == 0) { 
			color = c_black
			exit
		}
		color = hover ? c_green : c_white
		if hover and l_click {
			left_click_method()
		}
	}	
	
	end_step_method = function(){
		if (array_length(list) == 0) exit
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);
		var _spr_width = sprite_get_width(sprite) * scale;
		var _spr_height = sprite_get_height(sprite) * scale;
		
		hover = point_in_rectangle(_mouse_x, _mouse_y, x - _spr_width/2, y - _spr_height/2, x + _spr_width/2, y + _spr_height/2);
		l_click = mouse_check_button_pressed(mb_left)
	}
	
	draw_gui_method = function(){
		var _margin = 4;
		var _size = 4;
		var _size_new = _margin * _size;

		draw_sprite_ext(s_shop_icon_placeholder, 0, x + _margin + _size_new / 3 - 10, y + _margin + _size_new / 4,scale,scale,0,color,1);
		
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_modal(_width, _height, _key) constructor {
	width = _width;
	height = _height;
	key = _key
	item = variable_struct_get(o_quest_controll_update.struct_quests,key)
	hover = 0
	l_click = 0
	open_panel = false
	color = c_green

	event_step = function(){
		if !object_exists(o_player_controll) exit
		if item.unlocked {
			color = c_green
		}else {
			color = c_black
		}
	}
	event_end_step = function(){
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);
		hover = point_in_rectangle(_mouse_x, _mouse_y, x,y , x + width, y + height);
		l_click = mouse_check_button_pressed(mb_left)
	}
	
	event_draw_gui_end = function(){
		//if hover {
		//	var _mouse_x = device_mouse_x_to_gui(0);
		//	var _mouse_y = device_mouse_y_to_gui(0);

		//	var _size = 200;
		//	var _margin = 4;
	
		//	var _cell_size = _size + _margin;		
		//	var _spr = s_solid;
	
		//	var _x = 100
		//	var _y = 180

		//	draw_set_color(c_dkgray);
		//	draw_rectangle(_mouse_x,_mouse_y , x + width, y + height,0);
		//	draw_set_color(c_white);
		//	draw_rectangle(_x, _y, _x + _cell_size, _y + _cell_size,1);

		//    draw_text(100,180, "TEXT");
		//}else {
		//	instance_destroy()
		//}
	}
}
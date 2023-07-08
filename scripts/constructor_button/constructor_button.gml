function constructor_button(_w, _h) constructor {
	width = _w;
	height = _h;

	hover = 0;
	r_click = 0;
	l_click = 0;
	
	event_begin_step = function(){
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);
		
		hover = point_in_rectangle(_mouse_x, _mouse_y, x,y , x + width, y + height);

		l_click = mouse_check_button(mb_left);
		r_click = mouse_check_button(mb_right);
	}
	
	event_draw_gui = function(){
		draw_set_color(hover ? c_gray : c_black);
		draw_set_alpha(0.4);

		draw_rectangle(x,y,x + width, y + height, 0);

		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_rectangle(x , y , x + width, y + height,1);
	}
}
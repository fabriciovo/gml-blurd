var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);


hover = point_in_rectangle(_mouse_x, _mouse_y, x,y , x + width, y + height);


l_click = mouse_check_button(mb_left);
r_click = mouse_check_button(mb_right);

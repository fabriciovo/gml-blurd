#region Shop
if device_mouse_check_button(0,mb_left)  {
	if device_mouse_y_to_gui(0) > global.VH / 2 {
		c_scroll_force=1;
	}
	if device_mouse_y_to_gui(0) < global.VH / 2 {
		c_scroll_force=-1;
	}
	c_menu_scroll += c_scroll_force ;
		
	c_menu_scroll = clamp(c_menu_scroll, -c_menu_height, 0);
		

	with o_shop_item {
		y = ystart + other.c_menu_scroll;
	}
}
#endregion

#region Settings


#endregion

#region Mail


#endregion
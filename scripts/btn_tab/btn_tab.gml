function btn_tab(_layer_name,_sprite, _func, _size) constructor {
	layer_name = _layer_name
	func = _func
	sprite = _sprite
	size = _size
	height = 40
	width = 40
	hover = 0
	l_click = 0
	color = c_white
	scale = 2
	
	event_create = function(){ 
		
		screenWidth = window_get_width();
		screenHeight = window_get_height();

		btn_height = sprite_get_height(54);
		spaceBetweenItem = 5 ;

		scr_scrollable_set_First_Item_Position(obj_scrollable , 0);
	}
	
	left_click_method = function(){
		if size == 0 exit
		if !layer_get_visible("Shop") exit
		instance_destroy(o_shop_item)
		layer_set_visible(o_shop.open_panel, false)
		layer_set_visible(layer_name, true)
		o_shop.open_panel = layer_name
		func()
	}
	
	step_method = function(){ 
		if size == 0 exit
		color = hover ? c_green : c_white
		if hover and l_click {
			left_click_method()
		}
	}	
	
	end_step_method = function(){
		if size == 0 exit
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);
		var _spr_width = sprite_get_width(sprite) * scale;
		var _spr_height = sprite_get_height(sprite) * scale;
		
		hover = point_in_rectangle(_mouse_x, _mouse_y, x - _spr_width / 2, y - _spr_height/ 2, x + _spr_width/ 2, y + _spr_height/ 2);
		l_click = mouse_check_button_pressed(mb_left)
	}
	
	event_draw = function() {
		for(i = 1 ; i < 50 ; i++){
			yy = (((btn_height / 2)+spaceBetweenItem) * i) + scr_scrollable_get_scroll_data(obj_scrollable);
			draw_sprite(spr_btn,0,screenWidth/2, yy  );
		}

		scr_scrollable_set_Last_Item_Position(obj_scrollable , yy + (btn_height / 2) );
	}
	
	draw_gui_method = function(){
		if size == 0 exit
		var _margin = 3;
		var _size = size;
		var _size_new = _margin * _size;

		draw_sprite_ext(s_bag_btn, 0, x + _size_new, y, scale,scale,0,color,1);
	}
}
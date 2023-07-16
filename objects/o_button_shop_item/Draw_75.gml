//if hover {
//	var _size = 8;
//	var _margin = 4;
	
//	var _cell_size = _size + _margin * 2;
	
//	var _x = device_mouse_x_to_gui(0) + 4;
//	var _y = device_mouse_y_to_gui(0);
	
	
//	var _recipe = global.item[item].recipe;
	
//	var _recipe_size = array_length(_recipe);
	
//	draw_set_color(c_dkgray);
//	draw_rectangle(_x, _y, _x+_cell_size * _recipe_size, _y+ _cell_size,0);
//	draw_set_color(c_white);
	
	
//	for (var _i = 0; _i < _recipe_size; _i++){
//		var _dx = _x + _cell_size * _i;
//		var _dy = _y;
		

//		var _ingr = _recipe[_i];
//		var _item = _ingr[0];
//		var _count = _ingr[1];
		
//		var _spr = global.item[_item].sprite;
		
//		draw_sprite(_spr,0,_dx + _cell_size / 2, _dy + _cell_size / 2);
//		draw_set_font(fn_ui);
		
//		draw_text(_dx + _cell_size * 0.8, _dy + _cell_size * 0.7, _count);
		
//	}
//}
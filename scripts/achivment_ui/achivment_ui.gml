function achivment_ui(_name, _sprite) constructor{
	name = _name
	sprite_ = _sprite
	
	create_method = function(){
		alarm[0] = global.one_second * 2	
	}

	draw_gui_end_method = function(){
		var _margin = 4;
		var _scale = 2;
		var _size = 4;
		var _height = 40
		var _width = 300
		var _size_new = _height - _margin * _size;
		
		draw_set_color(c_green);
		draw_set_alpha(0.4);

		draw_rectangle(50,50,50 + _width, 50 + _height, 0);

		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_rectangle(50 , 50 , 50 + _width, 50 + _height,1);


		draw_sprite_ext(sprite_, 0, 50 + _margin + _size_new / 3 - 10, 50 + _margin + _size_new / 4,_scale,_scale,0,c_white,1);
		

		draw_set_font(fnt_shop_item);
		draw_text(50 + _margin * 2 + _size_new, 50 + _margin + 2, name);
	
	}
	
	alram0_method = function(){
		instance_destroy()
	}
}
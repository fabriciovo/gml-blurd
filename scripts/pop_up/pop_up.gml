function pop_up(_name, _sprite = undefined) constructor{
	name = _name
	sprite = _sprite
	
	create_method = function(){
		alarm[0] = global.one_second * 2	
	}

	draw_gui_end_method = function(){
		var _margin = 4
		var _scale = 2
		var _size = 4
		var _height = 60
		var _width = 300
		var _x = 30
		var _size_new = _height - _margin * _size
		
		draw_set_color(c_black);
		draw_set_alpha(1);

		draw_rectangle(_x,50,_x + _width, 50 + _height, 0);

		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_rectangle(_x , 50 , _x + _width, 50 + _height,1);


		if sprite {
			draw_sprite_ext(sprite, 0, _x + _margin + _size_new / 3 - 10, 50 + _margin + _size_new / 4,_scale,_scale,0,c_white,1);
		}

		draw_set_font(fnt_shop_item);
		draw_text_ext_color(_x + _margin * 2 + _size_new, 50 + _margin + 2, "Quest Completed!",5,_width,c_gray, c_gray, c_navy, c_navy, .5);
		draw_set_font(fnt_shop_item);
		draw_text(_x + _margin * 2 + _size_new, 70 + _margin + 2, name);
	
	}
	
	alram0_method = function(){
		instance_destroy()
	}
}
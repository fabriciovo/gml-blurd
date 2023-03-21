function Item_UI(_item,_index, _width, _height) constructor {
	width = _width;
	height = _height;
	item = _item
	index = _index;
	hover = 0
	l_click = 0
	open_panel = false
	color = c_green

	
	step_method = function(){
		if !object_exists(o_player_controll) exit

		if o_player_controll.player.coins >= item.price {
			color = hover ? c_green : c_blue
			if hover and l_click {
				o_player_controll.player.coins -= item.price
				item.coins_per_second = item.coins_per_second * item.level
				o_player_controll.player.coins_per_second += item.coins_per_second
				o_player_controll.player.shop_items[index].level++
				o_player_controll.player.shop_items[index].price = item.price * 2
				o_player_controll.player.shop_items[index].coins_per_second = item.coins_per_second
				item = o_player_controll.player.shop_items[index]
			}
			
		}else {
			color = c_red	
		}



	}
	end_step_method = function(){
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);


		hover = point_in_rectangle(_mouse_x, _mouse_y, x,y , x + width, y + height);
		
		l_click = mouse_check_button_pressed(mb_left)
	}
	
	draw_gui_method = function(){
		var _margin = 4;
		var _scale = 2;
		var _size = 4;
		var _size_new = height - _margin * _size;

		var _spr = item.sprite;
		var _name = item.name;

		draw_set_color(color);
		draw_set_alpha(0.4);

		draw_rectangle(x,y,x + width, y + height, 0);

		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_rectangle(x , y , x + width, y + height,1);


		draw_sprite_ext(_spr, 0, x + _margin + _size_new / 3 - 10, y + _margin + _size_new / 4,_scale,_scale,0,c_white,1);

		draw_set_font(fnt_shop_item);
		draw_text(x + _margin * 2 + _size_new, y + _margin + 2, _name);
		draw_text(x + _margin * 19 + _size_new, y + _margin + 2, "Lvl: " + string(item.level));
		draw_text(x + _margin * 2 + _size_new, y + _margin + 20, "Price: " + string(item.price));
		draw_text(x + _margin * 19 + _size_new, y + _margin + 20, "CpS: " + string(item.coins_per_second));
	}
}


function Item_Upgrade_UI(_item,_index, _width, _height) constructor {
	width = _width;
	height = _height;
	item = _item
	index = _index;
	hover = 0
	l_click = 0
	open_panel = false
	color = c_green

	
	step_method = function(){
		if !object_exists(o_player_controll) exit

		if o_player_controll.player.coins >= item.price {
			color = hover ? c_green : c_blue
			if hover and l_click {
				o_player_controll.player.coins -= item.price
				o_player_controll.player.upgrades[index].level++
				o_player_controll.player.upgrades[index].price = item.price * 2
				item = o_player_controll.player.upgrades[index]
			}
			
		}else {
			color = c_red	
		}



	}
	end_step_method = function(){
		var _mouse_x = device_mouse_x_to_gui(0);
		var _mouse_y = device_mouse_y_to_gui(0);


		hover = point_in_rectangle(_mouse_x, _mouse_y, x,y , x + width, y + height);
		
		l_click = mouse_check_button_pressed(mb_left)
	}
	
	draw_gui_method = function(){
		var _margin = 4;
		var _scale = 2;
		var _size = 4;
		var _size_new = height - _margin * _size;

		var _spr = item.sprite;
		var _name = item.name;

		draw_set_color(color);
		draw_set_alpha(0.4);

		draw_rectangle(x,y,x + width, y + height, 0);

		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_rectangle(x , y , x + width, y + height,1);

		draw_sprite_ext(_spr, 0, x + _margin + _size_new / 3 - 10, y + _margin + _size_new / 4,_scale,_scale,0,c_white,1);

		draw_set_font(fnt_shop_item);
		draw_text(x + _margin * 2 + _size_new, y + _margin + 2, _name);
		draw_text(x + _margin * 19 + _size_new, y + _margin + 2, "Lvl: " + string(item.level));
		draw_text(x + _margin * 2 + _size_new, y + _margin + 20, "Price: " + string(item.price));
		draw_text(x + _margin * 26 + _size_new, y + _margin + 20, "Price: " + string(item.type));
	}

}
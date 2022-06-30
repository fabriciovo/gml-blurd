function Shop(_x,_y, _layer, _container, _global_list) constructor {
	layer_ = _layer;
	container_ = _container;
	global_list_ = _global_list;
	x = _x;
	y = _y;
	list_of_objects_ = ds_list_create()
	create_shop = function(){
		var _keys = variable_struct_get_names(global_list_);
		for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
		    var _k = _keys[_i];
		    var _shop_item = variable_struct_get(global_list_, _k);
			var _obj = instance_create_layer(x,y /2 +  _i * 38 ,layer_, container_);
				_obj.sprite_ = _shop_item.sprite_;	
				_obj.index_ = _shop_item.index_;	
				_obj.name_ = _shop_item.name_;
				_obj.key_ = _shop_item.key_;
				_obj.level_ = _shop_item.level_;
				_obj.cost_ = _shop_item.cost_ 
				_obj.coins_per_second_ = _shop_item.coins_per_second_;
				_obj.base_cost_ = _shop_item.base_cost_;
				_obj.unlock_upgrade_ = _shop_item.unlock_upgrade_;
			ds_list_add(list_of_objects_, _obj)
		}
	}
	
	reload_shop = function(_key){
		//var item = ds_list_find_value(list_of_objects_, _index);
		//show_message(list_of_objects_[| _index].level_)
		global.coin_items[$ _key].level_+=5;
		show_message(global.coin_items[$ _key])
		global.coin_items[$ _key].unlock_upgrade_();
		//show_message(item.level_)
	}
}



function Shop_Container(_name, _coins, _coins_per_second, _sprite, _index, _level, _key, _cost, _x, _y) constructor {
	name_ = _name;
	coins_ = _coins;
	coins_per_second_ = _coins_per_second;
	sprite_ = _sprite;
	index_ = _index;
	level_ = _level;
	key_ = _key;
	cost_ = _cost;
	x = _x;
	y = _y;
	
	draw_end_method = function() {
		if level_ <= 0 exit;
		draw_self();

		if(global.coins >= cost_) {
			draw_sprite_ext(s_shop_container, 0, x / 2 - 1, y, 0.5, 0.5,0,c_green,1);
		} else {
			draw_sprite_ext(s_shop_container, 0, x / 2 - 1, y, 0.5, 0.5,0,c_white,1);
		}

		draw_sprite(sprite_, index_,x / 2 - 12, y - 10);
		draw_text( x / 2 + 14, y - 14,name_);
		draw_text( x / 2 + 14, y ,"cost " + string(cost_));
		draw_text( x / 2 + 54, y,"CpS " + string(coins_per_second_));

	}
	
	
	tap_method = function() {
		if not visible or level_ <= 0 exit;
		if(global.coins >= cost_){
			var _item = global.coin_items[$ key_];
			global.coins -= cost_;
			global.coins_per_second  += coins_per_second_;
			level_++;
			cost_ += cost_ + 2 * level_;
			coins_per_second_ = cost_  / level_;
			_item.coins_per_second_ = coins_per_second_;
			_item.cost_ = cost_;
			_item.level_ = level_;
			_item.unlock_upgrade_();
		} 

	}
}

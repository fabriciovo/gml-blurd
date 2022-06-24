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
		show_message(list_of_objects_[| 0].name_)

	}
	
	reload_shop = function(){
	
	
	}
}



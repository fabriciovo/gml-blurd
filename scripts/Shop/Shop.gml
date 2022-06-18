// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop(_layer, _container, _global_list) {
	var _keys = variable_struct_get_names(_global_list);
	for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	    var _k = _keys[_i];
	    var _shop_item = variable_struct_get(_global_list, _k);
		if(_shop_item.level_ > 0) {
		var _obj = instance_create_layer(x,y /2 +  _i * 38 ,_layer, _container);
			_obj.sprite_ = _shop_item.sprite_;	
			_obj.index_ = _shop_item.index_;	
			_obj.name_ = _shop_item.name_;
			_obj.key_ = _shop_item.key_;
			_obj.level_ = _shop_item.level_;
			_obj.cost_ = _shop_item.cost_ 
			_obj.coins_per_second_ = _shop_item.coins_per_second_;
			_obj.base_cost_ = _shop_item.base_cost_;
		}
	}
	layer_set_visible(_layer,false); 
}



// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop(_layer, _container, _global_list) {
	var _keys = variable_struct_get_names(_global_list);
	for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	    var _k = _keys[_i];
	    var _item = variable_struct_get(_global_list, _k);
		var _obj = instance_create_layer(x,y /2 +  _i * 38 ,_layer, _container);
		_obj.sprite_ = _item.sprite_;	
		_obj.index_ = _item.index_;	
		_obj.name_ = _item.name_;
		_obj.key_ = _item.key_;
		_obj.level_ = _item.level_;
		_obj.cost_ = _item.cost_ 
		_obj.coins_per_second_ = _item.coins_per_second_;
	}
	layer_set_visible(_layer,false); 
}



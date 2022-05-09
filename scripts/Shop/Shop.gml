// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop(_list_of_objects, _layer, _container, _global_list) {
	var _size = ds_list_size(_list_of_objects);
	for(var i = 0; i < _size; i++){
		var _item = _global_list[| i];
		var _obj = instance_create_layer(x,y /2 +  i * 38 ,_layer, _container);
		var _level = _global_list[? _item.key_ ];
		_obj.sprite_ = _item.sprite_;	
		_obj.index_ = _item.index_;	
		_obj.name_ = _item.name_;
		_obj.key_ = _item.key_;
		_obj.level_ = _level;
		_obj.cost_ = _item.cost_  * _level * 3.3
		_obj.coins_per_second_ = _item.cost_ / 35;
	}
	layer_set_visible(_layer,false); 
}
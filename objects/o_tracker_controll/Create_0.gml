/// @description Insert description here
// You can write your code in this editor

var _keys = variable_struct_get_names(global.shop_items);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i];
	var _item = variable_struct_get(global.shop_items, _k);
	for(var _n = 0; _n < global.shop_items_size; _n++){
		if(o_player_controll.player.shop_items[_n].name == _item.name ){
			_item.equiped = true
		}
	}
}
	
	
	

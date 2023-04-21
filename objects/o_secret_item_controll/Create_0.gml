
//var _size_secret_items = variable_struct_names_count(global.struct_craft_bag);
//var _craft_bag = variable_struct_get_names(global.struct_craft_bag)
//for(var _i = 0; _i < _size_secret_items; _i++){
//	var _player_map = o_player_controll.ds_secret_items
//	var _ds_list_value = ds_list_find_value(_player_array,_craft_bag[$ _i]);
//	if is_undefined(_ds_list_value) {
//		ds_map_set(_player_map,"",{unlocked: false, count:0});
//	}else{
//		global.array_secret_items[_i].count = ds_list_find_value(_player_array,_i).count
//	}
//}


//var _size_craft_bag = array_length(global.array_craft_bag);
//for(var _i = 0; _i < _size_craft_bag; _i++){
//	var _player_array = o_player_controll.ds_craft_items
//		var _ds_list_value = ds_list_find_value(_player_array,_i);
//	if is_undefined(_ds_list_value) {
//		ds_list_add(_player_map,{unlocked: false, count:0});
//	}else{
//		global.array_craft_bag[_i].count = ds_list_find_value(_player_array,_i).count
//	}

//}

var _list = global.struct_craft_bag
var _list_items_key = variable_struct_get_names(_list)
var _size = array_length(_list_items_key)
for (var _i = 0; _i < _size; _i++) {
	var _key = _list_items_key[_i]
	var _player_map = o_player_controll.ds_craft_items
	var _ds_map_value = ds_map_find_value(_player_map,_key);
	if is_undefined(_ds_map_value) {
		ds_map_set(_player_map, _key, {unlocked: false, count:0});
	}else{
		var value = ds_map_find_value(_player_map,_key)

		global.struct_craft_bag[$ _key].unlocked = value.unlocked
		global.struct_craft_bag[$ _key].count = value.count
	}
}


var _list = global.struct_secret_items
var _list_items_key = variable_struct_get_names(_list)
var _size = array_length(_list_items_key)
for (var _i = 0; _i < _size; _i++) {
	var _key = _list_items_key[_i]
	var _player_map = o_player_controll.ds_secret_items
	var _ds_map_value = ds_map_find_value(_player_map,_key);
	if is_undefined(_ds_map_value) {
		ds_map_set(_player_map, _key, {unlocked: false, count:0});
	}else{
		var value = ds_map_find_value(_player_map,_key)
		global.struct_secret_items[$ _key].unlocked = value.unlocked
		global.struct_secret_items[$ _key].count = value.count
	}
}





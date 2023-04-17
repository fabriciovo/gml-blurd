var _list = o_player_controll.ds_upgrades
var _list_items_values = ds_map_values_to_array(_list)

if _list_items_values == undefined exit
var _monster_array = array_filter(_list_items_values, find_type)
var _monster_array_size = array_length(_monster_array)

for(var _i = 0; _i < _monster_array_size; _i++) {
	if _monster_array[_i].level > 1 {
		event_user(_monster_array[_i].number)
	 }
}
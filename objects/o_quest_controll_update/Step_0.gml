var _list = o_player_controll.ds_quests
var _list_items_values = ds_map_values_to_array(_list)
var _list_items_values_size = array_length(_list_items_values)

for(var _i = 0; _i < _list_items_values_size; _i++) {
	if not _list_items_values[_i].unlocked continue
	if _list_items_values[_i].complete continue
	var _key = _list_items_values[_i].key
	struct_quests[$ _key].function_condition()
}

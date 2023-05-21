spawn_started = false
var _list = o_player_controll.ds_upgrades
var _list_items_values = ds_map_values_to_array(_list)
var _list_items_values_size = array_length(_list_items_values)



if not is_undefined(_list_items_values) {

	for(var _i = 0; _i < _list_items_values_size; _i++) {
		show_message(_list_items_values[_i])
		if _list_items_values[_i].type == "Monster" {
			spawn_started = true
		}
	}
	

	if spawn_started {
		alarm[0] = random_range(1,5) * global.one_second
	}
}
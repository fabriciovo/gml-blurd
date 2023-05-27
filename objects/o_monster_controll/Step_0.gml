if spawn_started == true exit
var _list = o_player_controll.ds_upgrades
var _list_items_values = ds_map_values_to_array(_list)
var _list_items_values_size = array_length(_list_items_values)
if  is_undefined(_list_items_values) exit
if _list_items_values_size > 0 exit
if not spawn_started {
	show_debug_message("sdasddssds")
	for(var _i = 0; _i < _list_items_values_size; _i++) {
		if is_undefined(_list_items_values[_i]) continue
		if _list_items_values[_i].type == "Monster" {
			show_debug_message("sdasddssdsd")
			spawn_started = true
			alarm[0] = 10
			break
		}
	}
}


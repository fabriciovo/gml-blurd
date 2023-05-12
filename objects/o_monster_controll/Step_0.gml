var _list = o_player_controll.ds_upgrades
var _list_items_values = ds_map_values_to_array(_list)
if _list_items_values == undefined exit
var _list_items_values_size = array_length(_list_items_values)
if _list_items_values_size == 0 exit

for(var _i = 0; _i < _list_items_values_size; _i++) {
	if _list_items_values[_i].type != "Monster" continue
	if _list_items_values[_i].level > 1 {
		event_user(_list_items_values[_i].number)
	 }
}
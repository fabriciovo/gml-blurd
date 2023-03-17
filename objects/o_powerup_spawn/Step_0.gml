var _upgrades_array = array_filter(o_player_controll.player.upgrades, find_type)
var _size = array_length(_upgrades_array)
for(var _i = 0; _i < _size; _i++) {
	if _upgrades_array[_i].level > 2 {
		event_user(_upgrades_array[_i].number)
	}
}
var _monster_array = array_filter(o_player_controll.player.upgrades, find_type)
var _size = array_length(_monster_array)
for(var _i = 0; _i < _size; _i++) {
	if _monster_array[_i].level > 2 {
		event_user(_monster_array[_i].number)
	}
}
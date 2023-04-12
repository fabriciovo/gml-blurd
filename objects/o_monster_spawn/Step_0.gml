var _player_monster_array = array_filter(o_player_controll.player.upgrades, find_type)
var _player_monster_array_size = array_length(_player_monster_array)

for(var _i = 0; _i < _player_monster_array_size; _i++) {
	if _player_monster_array[_i].level > 1 {
		event_user(_player_monster_array[_i].number)
	 }
}
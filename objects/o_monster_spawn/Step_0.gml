var _size = array_length(o_player_controll.player.monsters)
for(var _i = 0; _i < _size; _i++) {
	if o_player_controll.player.monsters[_i].level > 2 {
		event_user(o_player_controll.player.monsters[_i].number)
	}
}
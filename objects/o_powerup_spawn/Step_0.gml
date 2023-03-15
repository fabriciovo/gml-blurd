var _upgrade_size = array_length(o_player_controll.player.upgrades)
for(var _i = 0; _i < _upgrade_size; _i++) {
	if o_player_controll.player.upgrades[_i].level > 2 {
		event_user(o_player_controll.player.upgrades[_i].number)
	}
}
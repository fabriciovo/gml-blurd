for(var _i = 0; _i < global.upgrades_size; _i++) {
	if o_player_controll.player.upgrades[_i].level > 2 {
		event_user(o_player_controll.player.upgrades[_i].number)
	}
}
if(upgrade_states_.speed_drink.activate) {
	global.game_speed = global.game_speed * 2;
	alarm[0] += global.one_second * 3
	upgrade_states_.speed_drink.activate = false;
	upgrade_states_.speed_drink.reset_speed = false;
}

if(upgrade_states_.speed_drink.reset_speed) {

	global.game_speed += 0.01;
	if(global.game_speed == -1){
		upgrade_states_.speed_drink.reset_speed = false;
	}
}

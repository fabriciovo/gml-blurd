if(upgrade_states_.speed_drink.reset_speed) {
	global.game_speed -= 0.01;
	if(global.game_speed <= global.max_game_speed){
		upgrade_states_.speed_drink.reset_speed = false;
	}
}

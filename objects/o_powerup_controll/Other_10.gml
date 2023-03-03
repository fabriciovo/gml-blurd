if(powerup_states.speed_drink.activate) {
	global.game_speed = global.game_speed * 2;
	if global.game_speed <= global.max_game_speed {
		global.game_speed = global.max_game_speed
	}
	alarm[0] += global.one_second * powerup_states.speed_drink.duration_timer
	powerup_states.speed_drink.activate = false;
	powerup_states.speed_drink.reset_speed = false;
}

if(powerup_states.speed_drink.reset_speed) {
	global.game_speed += 0.01;
	if(global.game_speed == -3){
		powerup_states.speed_drink.reset_speed = false;
	}
}

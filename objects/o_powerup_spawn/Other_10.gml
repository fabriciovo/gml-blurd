if o_powerup_controll.powerup_states.speed_drink.can_spawn_item {
	alarm[0] = o_powerup_controll.powerup_states.speed_drink.spawn_timer * global.one_second
	o_powerup_controll.powerup_states.speed_drink.can_spawn_item = false
}
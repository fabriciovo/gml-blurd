powerup_states = {
	speed_drink: {
		activate: false,
		reset_speed: false,
		can_spawn_item: true,
		spawn_timer: 5,
		duration_timer: 3
	},
}

instance_create_layer(x,y,"Instances",o_powerup_spawn)
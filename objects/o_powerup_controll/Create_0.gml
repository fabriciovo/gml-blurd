powerup_states = {
	speed_drink: {
		activate: false,
		reset_speed: false,
		can_spawn_item: true,
		spawn_timer: 1,
		duration_timer: 3
	},
}

instance_create_layer(x,y,"Instances",o_powerup_spawn)

find_type = function(_val, _index) {
	return _val.type == "Power Up"
}
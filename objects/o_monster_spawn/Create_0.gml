monsters = {
	spike_head: {
		can_spawn: true,
		spawn_timer: 1
	},
	snail: {
		can_spawn: true,
		spawn_timer: 1
	},
	angry_bird: {
		can_spawn: true,
		spawn_timer: 1
	},
}


find_type = function(_val, _index) {
	return _val.type == "Monster"
}
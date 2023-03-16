/// @description Event Spawn Snail 
if monsters.spike_head.can_spawn {
	alarm[0] = monsters.spike_head.spawn_timer * global.one_second
	monsters.spike_head.can_spawn = false
}
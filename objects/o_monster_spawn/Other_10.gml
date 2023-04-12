/// @description Event Spawn Spike Head  
if global.upgrade_items.spike_head.can_spawn {
	alarm[0] = global.upgrade_items.spike_head.spawn_timer * global.one_second
	global.upgrade_items.spike_head.can_spawn = false
}
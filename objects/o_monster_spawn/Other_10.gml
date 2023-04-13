/// @description Event Spawn Spike Head  
if global.struct_upgrade_items.spike_head.can_spawn {
	alarm[0] = global.struct_upgrade_items.spike_head.spawn_timer * global.one_second
	global.struct_upgrade_items.spike_head.can_spawn = false
}
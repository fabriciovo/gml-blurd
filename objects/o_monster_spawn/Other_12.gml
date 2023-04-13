/// @description Spawn Angry Bird
if global.struct_upgrade_items.angry_bird.can_spawn {
	alarm[2] = global.struct_upgrade_items.angry_bird.spawn_timer * global.one_second
	global.struct_upgrade_items.angry_bird.can_spawn = false
}
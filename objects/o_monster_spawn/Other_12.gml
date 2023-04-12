/// @description Spawn Angry Bird
if global.upgrade_items.angry_bird.can_spawn {
	alarm[2] = global.upgrade_items.angry_bird.spawn_timer * global.one_second
	global.upgrade_items.angry_bird.can_spawn = false
}
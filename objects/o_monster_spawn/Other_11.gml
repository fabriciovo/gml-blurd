/// @description Event Snail
if global.upgrade_items.snail.can_spawn {
	alarm[1] = global.upgrade_items.snail.spawn_timer * global.one_second
	global.upgrade_items.snail.can_spawn = false
}
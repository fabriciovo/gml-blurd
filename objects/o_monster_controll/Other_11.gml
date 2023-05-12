/// @description Event Snail
if global.struct_upgrade_items.snail.can_spawn {
	alarm[1] = global.struct_upgrade_items.snail.spawn_timer * global.one_second
	global.struct_upgrade_items.snail.can_spawn = false
}
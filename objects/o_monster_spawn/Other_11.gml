/// @description Event Snail
if monsters.snail.can_spawn {
	alarm[1] = monsters.snail.spawn_timer * global.one_second
	monsters.snail.can_spawn = false
}
/// @description Spawn Fly
if monsters.angry_bird.can_spawn {
	alarm[2] = monsters.angry_bird.spawn_timer * global.one_second
	monsters.angry_bird.can_spawn = false
}
var _spawn_timer = global.one_second
var speed_up_timer = global.one_second
var _spawn_timer_count = _spawn_timer
_spawn_timer_count -= speed_up_timer
if _spawn_timer <= 0 {
	_spawn_timer =  global.one_second
	instance_create_layer(global.Spawn_VH, random(global.Spawn_VW),"Instances", o_powerup, new Energy_Drink())
}

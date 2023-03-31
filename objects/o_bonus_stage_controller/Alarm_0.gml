instance_create_layer(global.VW,random_range(0,global.VH),"Instances", o_enemy_bonus)

if instance_exists(o_player_bonus) {
	alarm[0] = global.one_second
}
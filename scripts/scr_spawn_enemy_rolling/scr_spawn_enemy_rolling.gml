function scr_spawn_enemy_rolling(){
	h = random_range(1,190);
	instance_create_layer(x,h,"Instances",obj_rolling);
}

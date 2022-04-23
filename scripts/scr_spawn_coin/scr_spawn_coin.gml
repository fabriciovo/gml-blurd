function scr_spawn_coin(){
	h = random_range(1,220);
	instance_create_layer(x,h,"Instances",obj_coin);
}

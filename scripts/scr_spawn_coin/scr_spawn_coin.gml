function scr_spawn_coin(){
	var _h = random_range(1,220);
	instance_create_layer(x,_h,"Instances",o_coin);
}

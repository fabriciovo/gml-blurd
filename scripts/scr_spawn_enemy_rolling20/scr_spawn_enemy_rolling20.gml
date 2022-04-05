function scr_spawn_coins(){
	h = random_range(1,190);
	instance_create(x,h,obj_coin);
}

function scr_spaw_enemy_one(){
	h = random_range(240,640);
	instance_create(x,y,choose(obj_spike_head,obj_rolling));
}

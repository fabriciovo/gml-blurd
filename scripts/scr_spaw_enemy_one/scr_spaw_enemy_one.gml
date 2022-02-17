function scr_spaw_enemy_one() {
	{
	    alarm[1] = 80;
	    h = random_range(10,640);
	    instance_create(room_width+4,h,obj_monster);
	}



}

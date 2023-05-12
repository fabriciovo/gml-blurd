if room == rm_game {
	alarm[0] = global.one_second
	//TODO - Change objects for functions	
	instance_create_layer(x-30,y,"Instances",o_player, new constrtuctor_hero_blurd())
	//instance_create_layer(x,y,"Instances", o_powerup_controll)
	instance_create_layer(172,260,"Instances", o_monster_controll)
	instance_create_layer(x,y,"Instances", o_coin_spawn)
	instance_create_layer(x,y,"Instances", o_tracker_controll)
	instance_create_layer(x,y,"Instances", o_secret_item_controll)
	//instance_create_layer(x,y,"Instances",o_hat, new Hat("hat",0,s_hat))
}

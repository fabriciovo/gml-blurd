if room == rm_game {
	alarm[0] = global.one_second
	//instance_create_layer(x,y,"Instances", o_tracker_controll)
	instance_create_layer(x,y,"Instances",o_player, new Blurd())
	instance_create_layer(100,50,"Instances", o_powerup_controll)
	instance_create_layer(352,496,"Instances", o_monster_spawn)
	instance_create_layer(x,y,"Instances", o_coin_spawn)
	instance_create_layer(x,y,"Instances", o_tracker_controll)
	//instance_create_layer(x,y,"Instances",o_hat, new Hat("hat",0,s_hat))
}

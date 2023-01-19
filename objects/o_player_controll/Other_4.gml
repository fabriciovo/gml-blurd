if room == rm_game {
	alarm[0] = global.one_second * player.coins_timer
	instance_create_layer(x,y,"Instances",o_hat, new Hat("hat",0,s_hat))
}

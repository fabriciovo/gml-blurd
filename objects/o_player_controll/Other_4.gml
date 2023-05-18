if room == rm_game {
	
	if last_date_time != "" {
		var _last_date_time =  f_string_to_date(last_date_time);
		var _current_date = date_current_datetime()
		var _offline_hours = date_hour_span(_last_date_time,_current_date)

		coins_out_game = _offline_hours * coins_per_second;	
	
	
		if coins_out_game > 0 {
			instance_create_layer(room_width / 2, room_height / 2, "Instances", o_coins_out_game)
		}
	}
	
	
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

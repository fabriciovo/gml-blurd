/// @description Coin Alarm
view_width = view_wport[3];
view_height = view_hport[3];
instance_create_layer(view_width, random(view_height),"Instances", o_coin)

alarm[0] = coin_timer
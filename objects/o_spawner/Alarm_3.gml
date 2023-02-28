/// @description Coin Alarm
view_width = view_wport[3];
view_height = view_hport[3];
instance_create_layer(view_width, random(view_height),"Instances", o_powerup, new Energy_Drink())
alarm[3] = coin_timer
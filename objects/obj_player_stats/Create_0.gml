/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_blurd);

coins = 0;
coins_out_game = 0;
coins_per_second = 0;
coins_delay = 1;

alarm[0] = coins_delay * global.one_second;

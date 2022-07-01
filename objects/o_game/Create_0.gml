/// @description Insert description here
// You can write your code in this editor
global.one_second = game_get_speed(gamespeed_fps);
global.game_speed = -1;

global.coins = 0;
global.coins_per_second = 0;


global.coin_items = {
	cake: new Item("Cake",1,1,1,1,s_cake,0,"cake","bottled_drink", 5, false),
	bottled_drink : new Item("Bottled Drink",50,50,3,0,s_bottled_drinks,0,"bottled_drink","speed_drink",2, true),
}

global.upgrade_items = {
	speed_drink: new Speed_Drink(),
}


global.upgrade_stages = {
	grass_land:{
		tree: 0,
	},
}

global.characters = {
	blurd: o_blurd,
}


coins_out_game_ = 0;
coins_delay_ = 1;



alarm[2] = global.one_second * coins_delay_;

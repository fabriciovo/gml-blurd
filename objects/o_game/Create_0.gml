/// @description Insert description here
// You can write your code in this editor
global.one_second = game_get_speed(gamespeed_fps);
global.coins = 0;
global.coins_per_second = 0;

global.upgrade_items = ds_map_create()
global.characters = ds_map_create()


global.coin_items = {
	cake: new Cake(),
	bottled_drinks : new Bottled_Drinks(),
}





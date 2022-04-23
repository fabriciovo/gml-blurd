/// @description Insert description here
// You can write your code in this editor

if(obj_player_stats.coins >= cost){
	obj_player_stats.coins -= cost;
	obj_player_stats.coins_per_second += coins_per_second;
	cost = cost * 12.3;
	coins_per_second = cost / 3 * 1.2;
}

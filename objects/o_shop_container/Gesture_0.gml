/// @description Insert description here
// You can write your code in this editor

if(global.coins >= cost){
	global.coins -= cost;
	cost = cost * 3.3;
	global.coins_per_second  += coins_per_second;
	coins_per_second += cost / 35;
}

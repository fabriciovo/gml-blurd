/// @description Insert description here
// You can write your code in this editor

if(global.coins >= cost_){
	global.coins -= cost_;
	level_++;
	cost_ = cost_ * level_ * 3.3;
	global.coins_per_second  += coins_per_second_;
	coins_per_second_ += cost_ / 35;
	global.coin_items[? key_] = level_;
} 

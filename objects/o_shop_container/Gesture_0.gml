/// @description Insert description here
// You can write your code in this editor

if(global.coins >= cost_){
	var _item = global.coin_items[$ key_];
	global.coins -= cost_;
	level_++;
	cost_ += 2;
	global.coins_per_second  += coins_per_second_;
	coins_per_second_ += cost_ / 2;
	_item.level_ = level_;
	_item.coins_per_second_ = coins_per_second_;
	_item.cost_ = cost_;
} 

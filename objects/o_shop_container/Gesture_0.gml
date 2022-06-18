/// @description Insert description here
// You can write your code in this editor
if not visible exit;
if(global.coins >= cost_){
	var _item = global.coin_items[$ key_];
	global.coins -= cost_;
	global.coins_per_second  += coins_per_second_;
	level_++;
	cost_ += cost_ + 2 * level_;
	coins_per_second_ = cost_  / level_;
	_item.coins_per_second_ = coins_per_second_;
	_item.cost_ = cost_;
	_item.level_ = level_;
} 

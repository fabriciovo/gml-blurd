/// @description Insert description here
// You can write your code in this editor
if global.coin_items[$ key_].level_ <= 0 exit;
var lay_id = layer_get_id("Coins");


if(global.coins >= cost_ && layer_get_visible(lay_id) == 1){
	global.coin_items[$ key_].level_++;
	global.coins -= global.coin_items[$ key_].cost_;
	global.coin_items[$ key_].cost_ = global.coin_items[$ key_].cost_ + 2 * global.coin_items[$ key_].level_;
	global.coins_per_second += global.coin_items[$ key_].coins_per_second_;
	global.coin_items[$ key_].coins_per_second_ = global.coin_items[$ key_].cost_ / global.coin_items[$ key_].level_ ;
	global.coin_items[$ key_].unlock_upgrade_();	
	
	//level_++;
	//cost_ += cost_ + 2 * level_;
	//coins_per_second_ = cost_  / level_;
} 

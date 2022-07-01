/// @description Insert description here
// You can write your code in this editor
if level_ <= 0 exit;
if(global.coins >= cost_){
	global.upgrade_items[$ key_].level_++;
	global.coins -= global.upgrade_items[$ key_].cost_;
	global.upgrade_items[$ key_].cost_ = global.upgrade_items[$ key_].cost_ + 2 * global.upgrade_items[$ key_].level_	
} 

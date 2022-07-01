/// @function    Item(_name, _base_cost, _cost, _coins_per_second, _sprite, _index, _key)
/// @desc Desc           
/// @arg Name 
/// @arg Base_Cost  
/// @arg Cost    
/// @arg Coins_Per_Second 
/// @arg Level 
/// @arg Sprite   
/// @arg Index  
/// @arg Key  
/// @arg Upgrade_Key  
/// @arg Upgrade_Level  
/// @arg Is_Upgrade  
function Item(_name, _base_cost, _cost, _coins_per_second,_level, _sprite, _index, _key, _upgrade_key, _upgrade_level, _is_upgrade) constructor {
	name_ =_name;
	base_cost_ = _base_cost;
	cost_ = _cost;
	coins_per_second_ = _coins_per_second;
	sprite_ = _sprite;
	index_  = _index;
	key_ = _key;
	level_ =_level;
	upgrade_key_ =_upgrade_key
	upgrade_level_ =_upgrade_level
	is_upgrade_ = _is_upgrade
	unlock_upgrade_ = function() {
		if(upgrade_key_=="") exit;
		if(level_ == upgrade_level_){
			if(not is_upgrade_){
				global.coin_items[$ upgrade_key_].level_++;						
			}else{
				global.upgrade_items[$ upgrade_key_].level_++;	
				global.coin_items[$ upgrade_key_].level_++
			}
		}
	}
}

/*
function Cake(): Item() constructor {
	name_ = "Cake";
	cost_ = 1;
	base_cost_ = 1;
	coins_per_second_ = 1;
	sprite_ = s_cake;
	index_ = 0;
	level_ = 1;
	key_ = "cake";
	
	unlock_upgrade_ = function(){
		if(level_ == 5){
			global.coin_items.bottled_drinks.level_++;
		}
	}
}


function Bottled_Drinks(): Item() constructor {
	name_ = "Bottled Drinks";
	cost_ = 50;
	base_cost_ = 50;
	coins_per_second_ = 3;
	sprite_ = s_bottled_drinks;
	index_ = 0;
	level_ = 0;
	key_ = "bottled_drinks";
	unlock_upgrade_ = function(){
		if( level_ == 2){
			global.upgrade_items.speed_drink.level_++;
		}
	}
}
*/

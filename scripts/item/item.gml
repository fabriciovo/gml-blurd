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
function Item(_name, _base_cost, _cost, _coins_per_second,_level, _sprite, _index, _key) constructor {
	name_ =_name;
	base_cost_ = _base_cost;
	cost_ = _cost;
	coins_per_second_ = _coins_per_second;
	sprite_ = _sprite;
	index_  = _index;
	key_ = _key;
	level_ =_level;
	unlock_upgrade_ = function() {
		
	}
}

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

		if( self.level_ > 5){
			global.coin_items.bottled_drinks.level_++;
			show_message(global.coin_items.bottled_drinks.level_);
			show_message("asdsadasda")
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
		
	}
}




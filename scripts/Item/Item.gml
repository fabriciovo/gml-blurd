/// @function    Item(_name, _base_cost, _cost, _level, _index, _key)
/// @desc Desc           
/// @arg Name 
/// @arg Base_Cost  
/// @arg Cost    
/// @arg Level 
/// @arg Key 
function Item(_name, _base_cost, _cost, _level, _key) constructor {
	name_ =_name;
	base_cost_ = _base_cost;
	cost_ = _cost;
	key_ = _key;
	level_ =_level;
}


function Coin_Item(_name, _base_cost, _cost, _level, _key, _coins_per_second) 
: Item(_name, _base_cost, _cost, _level, _key) constructor {
	name_ =_name;
	base_cost_ = _base_cost;
	cost_ = _cost;
	key_ = _key;
	level_ =_level;
	coins_per_second = _coins_per_second
	
	
	buy_method = function(){
		
	}
	
	
	struct_to_save = function(){
		
	}
}

function PowerUp_Item(_name, _base_cost, _cost, _level, _key) 
: Item(_name, _base_cost, _cost, _level, _key) constructor {
	name_ =_name;
	base_cost_ = _base_cost;
	cost_ = _cost;
	sprite_ = _sprite;
	index_  = _index;
	key_ = _key;
	level_ =_level;
	coins_per_second = _coins_per_second
}


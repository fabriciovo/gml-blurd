// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_upgrade(_name, _key, _sprite,_price, _number, _type, _mult,_level) constructor {
	name = _name
	key = _key
	level = _level
	sprite = _sprite
	price = _price
	number = _number
	type = _type
	mult = _mult
	
	can_spawn = true
	spawn_timer = 1
	
	
	function_reward = function(){
		return {
			key: key,
			price: price,
			mult: mult,
			level: level,
			type: type,
			number: number
		}
	}
	
}

function constructor_upgrade_unlockable(_name, _key, _sprite,_price, _number, _type, _mult,_level, _reward): constructor_upgrade(_name, _key, _sprite,_price, _number, _type, _mult,_level) constructor {
	reward = _reward;
	name = _name
	key = _key
	level = _level
	sprite = _sprite
	price = _price
	number = _number
	type = _type
	mult = _mult
	
	function_food_reward = function(){		
		food_reward(
		o_player_controll.ds_foods,
		reward)
	
	}
}

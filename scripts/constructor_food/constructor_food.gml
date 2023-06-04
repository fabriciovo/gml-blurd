function constructor_food(_name, _key, _sprite,_price,_cps, _mult, _level) constructor {
	name = _name
	key = _key
	sprite =  _sprite
	price = _price
	coins_per_second = _cps
	mult = _mult
	level = _level
	
	function_reward = function(){
		return {
			key: key,
			price: price,
			mult: mult,
			level: level,
			coins_per_second: coins_per_second
		}
	}
}
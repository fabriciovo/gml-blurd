// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _init(){
	gml_pragma("global","_init()");
	global.upgrades = {};
	global.food_items = {
		candy: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid,
			unlocked: true,
			level: 1,
		},
		candy_1: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid,
			unlocked: true,
			level: 1,
		},
	}
	
	
	create_upgrades(global.food_items)
	
	enum RES {
		WIDTH = 180,
		HEIGHT = 320,
		SCALE = 2
	}
}


function create_upgrades(_food){
	var _json = {}
	struct_foreach(_food, function(_name, _value)
	{
		_json = _name + " " + "upgrade";
		struct_set(_json,_name, { "name": _value.name, "price": _value.price * 2 });
	});
	global.upgrades = _json;
	
}
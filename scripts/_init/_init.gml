// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _init(){
	gml_pragma("global","_init()");
	
	global.food_items = {
		candy: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
		candy_1: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
		candy_2: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
		candy_3: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
		candy_4: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
		candy_5: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
		candy_6: {
			name: "Candy",
			price: 10,
			cps: 1,
			sprite: s_solid
		},
	}
	
	enum RES {
		WIDTH = 180,
		HEIGHT = 320,
		SCALE = 2
	}
}
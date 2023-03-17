// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	gml_pragma("global", "init()");
	
	
	global.achivments = {
		five_coins: {
			name:"Five Coins",
			description: "",
			sprite: s_item,
			unlocked: false,
			reward_key: "cake",
			reward_type: "shop_items"
		},
		first_enemy: {
			name:"Five Coins",
			description: "",
			sprite: s_item,
			unlocked: false,
			reward_key: "spike_head",
			reward_type: "upgrade_items"
		},
		gotta_go_fast: {
			name:"Gotta go fast!",
			description: "",
			sprite: s_item,
			unlocked: false,
			reward_key: "speed_drink",
			reward_type: "upgrade_items"
		},
	
	}
	
	global.shop_items = {
		cake: {
			name:"Cake",
			level:0,
			price: 1,
			coins_per_second: 0.1,
			total_coins:1,
			equiped: false,
			sprite: s_coin
		}
	}


	global.upgrade_items = {
		speed_drink: {
			name:"Speed Drink",
			level:0,
			sprite: s_item,
			number:0,
			price: 10,
			type:"Power Up"
		},
		spike_head: {
			name:"Spike Head",
			level:0,
			sprite: s_item,
			number:0,
			price: 10,
			type:"Monster"
		},
		snail: {
			name:"Snail",
			level:0,
			sprite: s_item,
			number:1,
			price: 10,
			type:"Monster"
		},
		angry_bird: {
			name:"Angry Bird",
			level:0,
			sprite: s_item,
			number:2,
			price: 10,
			type:"Monster"
		},
	}

	
}
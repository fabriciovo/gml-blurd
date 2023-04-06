/// @description Insert description here
// You can write your code in this editor

player = {
	total_coins: 0,
	coins:0,
	coins_per_second: 0,
	upgrades: [{
			name:"Spike Head",
			level:0,
			price:1,
			number:0,
			type:"Monster",
			sprite: s_coin,
		}],
	shop_items: [],
	craft_items:[],
	quests: [],
	secret_items: [],
	track:{
		collectables: {
			coins:{
				value:0
			}
		},
		monsters:{
			spike_head:{
				value:0
			},
			snail:{
				value:0
			},
			angry_bird:{
				value:0
			},
		},
		powerups:{
			speed_drink:{
				value:0
			},
		}
	}
}

alarm[1] = 500
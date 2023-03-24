/// @description Insert description here
// You can write your code in this editor

player = {
	total_coins: 0,
	coins:0,
	coins_per_second: 0,
	upgrades: [],
	shop_items: [
	{
				name:"Cake",
			level:1,
			sprite_key: "s_item",
			price: 1,
			coins_per_second: 0.1,
			sprite: s_coin
	}
	],
	achivments: [],
	track:{
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
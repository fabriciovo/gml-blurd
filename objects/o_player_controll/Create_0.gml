/// @description Insert description here
// You can write your code in this editor

player = {
	total_coins: 0,
	coins:0,
	coins_per_second: 0,
	coins_timer: 1,
	upgrades: [
		{
			name:"Speed Drink",
			level:0,
			sprite: s_coin,
			price: 5,
			number:0,
			type: "Power Up"
		},
		{
			name:"Spike Head",
			level:4,
			price:1,
			number:0,
			type:"Monster",
			sprite: s_coin,
		},
		{
			name:"Snail",
			level:4,
			sprite: s_coin,
			number:1,
			price: 10,
			type:"Monster"
		},
		{
			name:"Angry Bird",
			level:4,
			sprite: s_coin,
			number:2,
			price: 10,
			type:"Monster"
		},
	],
	shop_items: [
		{
			name:"Cake",
			level:1,
			sprite_key: "s_item",
			price: 1,
			coins_per_second: 0.1,
			equiped: false,
			sprite: s_coin
		},
	],
}
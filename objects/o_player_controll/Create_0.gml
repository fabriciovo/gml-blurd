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
			number:0
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
	monsters: [
		{
			name:"Spike Head",
			level:4,
			price:1,
			number:0
		}	
	]
}
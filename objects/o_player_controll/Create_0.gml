/// @description Insert description here
// You can write your code in this editor

player = {
	total_coins: 0,
	coins:0,
	coins_per_second: 0,
	coins_timer: 1,
	main_character: "Blurd",
	characters: [],
	main_hat: "hat",
	stage_upgrades: {
		grass_land: [
			{
				name:"Trees",
				level: 0
			}
		]
	},
	upgrades: [

	],
	shop_items: [

	],
}

global.shop_items_size = array_length(player.shop_items)
global.upgrades_size = array_length(player.upgrades)
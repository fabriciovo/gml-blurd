/// @description Insert description here
// You can write your code in this editor

player = {
	total_coins: 0,
	coins:0,
	coins_per_second: 0,

	craft_items:{
		spike_head_material:0,
		feather_material:0,
		shell_material:0,
	},
	quests: {},
	secret_items: {
		sky_stone:0,
	},
	upgrades: {},
	shop_items: {},
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
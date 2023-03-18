// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	gml_pragma("global", "init()");
	
		global.shop_items = {
		cake: {
			name:"Cake",
			level:1,
			sprite_key: "s_item",
			price: 1,
			coins_per_second: 0.1,
			sprite: s_coin
		}
	}


	global.upgrade_items = {
		speed_drink: {
			name:"Speed Drink",
			level:0,
			sprite: s_coin,
			price: 5,
			number:0,
			type: "Power Up"
		},
		spike_head: {
			name:"Spike Head",
			level:4,
			price:1,
			number:0,
			type:"Monster",
			sprite: s_coin,
		},
		snail: {
			name:"Snail",
			level:4,
			sprite: s_coin,
			number:1,
			price: 10,
			type:"Monster"
		},
		angry_bird: {
			name:"Angry Bird",
			level:4,
			sprite: s_coin,
			number:2,
			price: 10,
			type:"Monster"
		},
	}
	
	global.achivments = {
		five_coins: {
			name:"Five Coins",
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				if o_player_controll.player.total_coins >= 5 {
					achivment_reward(
					o_player_controll.player.shop_items,
					global.shop_items.cake,
					global.achivments.five_coins)
				}
			}
		}
	}
	
	global.achivments_list = ds_list_create()
	ds_list_add(global.achivments_list, global.achivments.five_coins)
}
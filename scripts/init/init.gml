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
	
	global.inventory = {
		first_bonus_stage: {
			name:"Bonus Stage",
			stage_name:"rm_bonus_stage_1",
			description: "When you use it, you unlock a portal to a bonus stage"
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
			level:0,
			price:1,
			number:0,
			type:"Monster",
			sprite: s_coin,
		},
		snail: {
			name:"Snail",
			level:0,
			sprite: s_coin,
			number:1,
			price: 10,
			type:"Monster"
		},
		angry_bird: {
			name:"Angry Bird",
			level:0,
			sprite: s_coin,
			number:2,
			price: 10,
			type:"Monster"
		},
	}
	
	global.achievements = {
		five_coins: {
			name:"Five Coins",
			progress: {
				text: "Collect Coins: ",
				count:0,
				max_count:5
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				if o_player_controll.player.total_coins >= 5 {
					achivment_reward(
					o_player_controll.player.shop_items,
					global.shop_items.cake,
					global.achievements.five_coins)
				}
			}
		},
		new_challenge: {
			name:"New Challenges",
			progress: {
				text: "Collect Coins: ",
				count:0,
				max_count:5
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				if o_player_controll.player.total_coins >= 10 {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.spike_head,
					global.achievements.new_challenge)
				}
			}
		},
		new_challenge_2: {
			name:"New Challenges",
			progress: {
				text: "Collect Coins: ",
				count:0,
				max_count:5
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				if o_player_controll.player.track.monsters.spike_head.value >= 50 {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.snail,
					global.achievements.new_challenge_2)
				}
			}
		},
		new_challenge_3: {
			name:"New Challenges",
			progress: {
				text: "Collect Coins: ",
				count:0,
				max_count:5
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				if o_player_controll.player.track.monsters.spike_head.value >= 10 {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.angry_bird,
					global.achievements.new_challenge_3)
				}
			}
		},
		new_challenge_4: {
			name:"New Challenges",
			progress: {
				text: "Collect Coins: ",
				count:0,
				max_count:5
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				if o_player_controll.player.total_coins >= 200 {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.speed_drink,
					global.achievements.new_challenge_4)
				}
			}
		}
	}
}
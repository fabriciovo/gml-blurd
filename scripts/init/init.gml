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
				var _track_value = o_player_controll.player.track.collectables.coins.value
				progress.count = _track_value
				if _track_value >= progress.max_count {
					achivment_reward(
					o_player_controll.player.shop_items,
					global.shop_items.cake,
					global.achievements.five_coins)
				}
			}
		},
		new_challenge: {
			name:"Ten Coins",
			progress: {
				text: "Collected Coins:",
				count:0,
				max_count:10
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				var _track_value = o_player_controll.player.track.collectables.coins.value
				progress.count = _track_value
				if _track_value >= progress.max_count {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.spike_head,
					global.achievements.new_challenge)
				}
			}
		},
		new_challenge_2: {
			name:"Kill this Spikes",
			progress: {
				text: "Spike Heads: ",
				count:0,
				max_count:10
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				var _track_value = o_player_controll.player.track.monsters.spike_head.value
				progress.count = _track_value
				if _track_value >= progress.max_count {
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
				text: "Spike Heads: ",
				count:0,
				max_count:50,
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				var _track_value = o_player_controll.player.track.monsters.spike_head.value
				progress.count = _track_value
				if _track_value >= progress.max_count {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.angry_bird,
					global.achievements.new_challenge_3)
				}
			}
		},
		new_challenge_4: {
			name:"More Speed",
			progress: {
				text: "Collect Coins: ",
				count:0,
				max_count: 200
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				var _track_value = o_player_controll.player.track.collectables.coins.value
				progress.count = _track_value
				if _track_value >= progress.max_count {
					achivment_reward(
					o_player_controll.player.upgrades,
					global.upgrade_items.speed_drink,
					global.achievements.new_challenge_4)
				}
			}
		}
	}
		
	global.secret_items = [
		{
			name:"Sky Stone",
			description:"Open a portal to teleport you for bonus Stage",
			count: 0,
			sprite: s_item,
			craft_items: {
				spikes: 5,
				feather: 5,
				shelled: 5
			},
			func: function(){
				room_goto(rm_bonus_stage_1)
			}
		}
	]
		
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	gml_pragma("global", "init()");
	
	enum ENUM_MATERIALS {
		SPIKE,
		FEATHER,
		SHELL
	}
	
	enum ENUM_SECRET_ITEMS {
		SKY_STONE
	}
	
	global.struct_shop_items = {
		cake: {
			key:"cake",
			name:"Cake",
			level:1,
			sprite_key: "s_item",
			price: 1,
			coins_per_second: 0.1,
			sprite: s_coin,
		},
		milk: {
			key:"milk",
			name:"Milk",
			level:1,
			sprite_key: "s_item",
			price: 5,
			coins_per_second: 0.2,
			sprite: s_coin,
		},
		chocolate: {
			key:"chocolate",
			name:"Chocolate",
			level:1,
			sprite_key: "s_item",
			price: 22,
			coins_per_second: 1,
			sprite: s_coin,
		},
		candy: {
			key:"chocolate",
			name:"Chocolate",
			level:1,
			sprite_key: "s_item",
			price: 22,
			coins_per_second: 1,
			sprite: s_coin,
		},
		ice_cream: {
			key:"ice_cream",
			name:"Ice Cream",
			level:1,
			sprite_key: "s_item",
			price: 50,
			coins_per_second: 1.5,
			sprite: s_coin,
		}
	}
	
	global.struct_upgrade_items = {
		speed_drink: {
			key:"speed_drink",
			name:"Speed Drink",
			level:0,
			sprite: s_coin,
			price: 5,
			can_spawn: true,
			spawn_timer: 1,
			number:0,
			type: "Power Up",
		},
		spike_head: {
			key:"spike_head",
			name:"Spike Head",
			level:0,
			price:1,
			number:0,
			can_spawn: true,
			spawn_timer: 1,
			type:"Monster",
			sprite: s_coin,
		},
		snail: {
			key:"snail",
			name:"Snail",
			level:0,
			sprite: s_coin,
			number:1,
			price: 10,
			type:"Monster",
			can_spawn: true,
			spawn_timer: 1,
		},
		angry_bird: {
			key:"angry_bird",
			name:"Angry Bird",
			level:0,
			sprite: s_coin,
			number:2,
			price: 10,
			type:"Monster",
			can_spawn: true,
			spawn_timer: 1,

		},
	}
	
	global.struct_quests = {
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
					quest_reward(
					o_player_controll.player.shop_items,
					global.struct_shop_items.cake,
					global.struct_quests.five_coins)
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
					quest_reward(
					o_player_controll.player.upgrades,
					global.struct_upgrade_items.spike_head,
					global.struct_quests.new_challenge)
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
					quest_reward(
					o_player_controll.player.upgrades,
					global.struct_upgrade_items.snail,
					global.struct_quests.new_challenge_2)
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
					quest_reward(
					o_player_controll.player.upgrades,
					global.struct_upgrade_items.angry_bird,
					global.struct_quests.new_challenge_3)
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
					quest_reward(
					o_player_controll.player.upgrades,
					global.struct_upgrade_items.speed_drink,
					global.struct_quests.new_challenge_4)
				}
			}
		}
	}
		
	global.array_secret_items = [
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
			},
			craft: function() {
				var _player_craft_items = o_player_controll.player.craft_items
				var _player_secret_items = o_player_controll.player.secret_items
				if _player_craft_items[0] >= craft_items.spikes  
				and _player_craft_items[1] >= craft_items.feather  
				and _player_craft_items[2] >= craft_items.shelled {
					_player_craft_items[0] -= craft_items.spikes
					_player_craft_items[1] -= craft_items.feather
					_player_craft_items[2] -= craft_items.shelled
					_player_secret_items[0] += 1
				}
			}
		}
	]
		
	global.array_craft_bag = [
		{
			name:"Spike",
			description: "",
			sprite: s_item,
			count: 0,
		},
		{
			name:"Bird Feather",
			description: "",
			sprite: s_item,
			count: 0,
		},
		{
			name:"Snail Hull",
			description: "",
			sprite: s_item,
			count: 0,
		}
	
	]

}
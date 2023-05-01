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
		candy: new constructor_food("Candy","candy",s_candy,1,0.10,1.1,1),
		ice_cream: new constructor_food("Ice Cream","ice_cream",s_ice_cream,1,0.10,1.1,1)
	}
	
	global.struct_upgrade_items = {
		energy_drink: {
			name:"Energy Drink",
			level:0,
			sprite: s_coin,
			price: 5,
			can_spawn: true,
			spawn_timer: 1,
			number:0,
			type: "Power Up",
			mult: 2
		},
		spike_head: {
			key: "spike_head",
			name:"Spike Head",
			level:0,
			price:1,
			number:0,
			can_spawn: true,
			spawn_timer: 1,
			type:"Monster",
			sprite: s_coin,
			mult: 1.3
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
			mult: 1.3
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
			mult: 1.3
		},
		unlock_angry_birds: {
			key:"unlock_angry_birds",
			name:"Unlock new Monsters",
			level:0,
			sprite: s_coin,
			number:2,
			price: 10,
			type:"Unlockable",
			mult: 0,
			reward: function(){
				var _reward_struct = variable_struct_get(global.struct_upgrade_items, "angry_bird")
				var _reward = { 
						level: 1,
						price: _reward_struct.price,
						type: _reward_struct.type,
						number: _reward_struct.number,
						value: 0
					}
					
				item_reward(
				o_player_controll.ds_upgrades,
				_reward_struct.key,
				_reward,
				"new_challenges_2")
			}
		},
	}
	
	global.struct_quests = {
		five_coins: {
			name:"Five Coins",
			progress: {
				text: "Collect Coins: ",
				max_count:5
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
				var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, "five_coins");
				if is_undefined(_track_value) exit
				if is_undefined(_save_progress_value) exit
				_save_progress_value.progress = _track_value.value
				if _save_progress_value.progress >= progress.max_count {
					var _reward_struct = variable_struct_get(global.struct_shop_items, "candy")
					var _reward = { 
							level: 1,
							price: _reward_struct.price
						}
					
					quest_reward(
					o_player_controll.ds_shop_items,
					_reward_struct.key,
					_reward,
					"five_coins")
				}
			}
		},
		ten_coins: {
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
				var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
				var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, "ten_coins");
				if is_undefined(_track_value) exit
				if is_undefined(_save_progress_value) exit
				_save_progress_value.progress = _track_value.value
				if _save_progress_value.progress >= progress.max_count {
					var _reward_struct = variable_struct_get(global.struct_upgrade_items, "unlock_angry_birds")
					var _reward = { 
							level: 0,
							price: _reward_struct.price,
							type: _reward_struct.type,
						}
					
					quest_reward(
					o_player_controll.ds_upgrades,
					_reward_struct.key,
					_reward,
					"ten_coins")
				}
			}
		},
		new_challenges: {
			name:"Ten Coins",
			progress: {
				text: "Collected Coins:",
				max_count:10
			},
			description: "",
			sprite: s_item,
			unlocked: false,
			condition: function(){
				var _track_value = ds_map_find_value(o_player_controll.ds_upgrades, "spike_head");
				var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, "new_challenges");
				if is_undefined(_track_value) exit
				if is_undefined(_save_progress_value) exit
				_save_progress_value.progress = _track_value.value
				if _save_progress_value.progress >= progress.max_count {
					var _reward_struct = variable_struct_get(global.struct_upgrade_items, "snail")
					var _reward = { 
							level: 1,
							price: _reward_struct.price,
							type: _reward_struct.type,
							number: _reward_struct.number,
							value: 0
						}
					
					quest_reward(
					o_player_controll.ds_upgrades,
					_reward_struct.key,
					_reward,
					"new_challenges")
				}
			}
		},
		new_challenges_2: {
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
				var _k = ds_map_find_value(o_player_controll.ds_upgrades, "snail");
				var _s = ds_map_find_value(o_player_controll.ds_quests, "new_challenges_2");
				if is_undefined(_k) exit
				if is_undefined(_s) exit
				var _track_value = o_player_controll.ds_upgrades[? "spike_head"].value
				var _save_progress_value = o_player_controll.ds_quests[? "new_challenges_2"].progress
				_save_progress_value = _track_value
				if _save_progress_value >= progress.max_count {
					var _reward_struct = variable_struct_get(global.struct_upgrade_items, "angry_bird")
					var _reward = { 
							level: 1,
							price: _reward_struct.price,
							type: _reward_struct.type,
							number: _reward_struct.number,
							value: 0
						}
					
					quest_reward(
					o_player_controll.ds_upgrades,
					_reward_struct.key,
					_reward,
					"new_challenges_2")
				}
			}
		},
	}
		
	global.struct_secret_items = {
		sky_stone: {
			name:"Sky Stone",
			description:"Open a portal to teleport you for bonus Stage",
			count: 0,
			sprite: s_item,
			craft_items: {
				spikes: 5,
				feather: 5,
				shell: 5
			},
			func: function(){
				room_goto(rm_bonus_stage_1)
			},
			craft: function() {
				var _player_craft_items = o_player_controll.ds_craft_items
				var _player_secret_items = o_player_controll.ds_secret_items		
				

				if _player_craft_items[? "spike"].count >= craft_items.spikes  
				and _player_craft_items[? "feather"].count >= craft_items.feather  
				and _player_craft_items[? "shell"].count >= craft_items.shell 
				{
					_player_craft_items[? "spike"].count -= craft_items.spikes
					_player_craft_items[? "feather"].count -= craft_items.feather
					_player_craft_items[? "shell"].count -= craft_items.shell
					_player_secret_items[? "sky_stone"].count += 1
					_player_secret_items[? "sky_stone"].unlocked = true
				}
			}
		}
	}
		
	global.struct_craft_bag = 	{
		spike:{
			name:"Spike",
			description: "",
			sprite: s_item,
			count: 0,
		},
		feather: {
			name:"Bird Feather",
			description: "",
			sprite: s_item,
			count: 0,
		},
		shell: {
			name:"Snail Hull",
			description: "",
			sprite: s_item,
			count: 0,
		}
	}
}
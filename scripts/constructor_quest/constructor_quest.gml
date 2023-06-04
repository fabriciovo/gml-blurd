function constructor_quest() constructor {
	name = ""
	key = ""
	track_key = ""
	global_struct = noone
	global_struct_key = noone
	ds_player_list = o_player_controll.ds_foods
	progress = {
		text: "",
		max_count: 0
	}
	complete = false
	description = ""
	sprite = noone
	unlocked = false
	track_value = noone
	save_progress_value = noone
	
	basic_struct = function(){
		return {
			key: key,
			progress:0, 
		}
	} 
	
	
	function_condition = function(){
		save_progress_value.progress = track_value
		if save_progress_value.progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
		}
	}
}

function quest_collect_five_coins() : constructor_quest() constructor {
	name = "Collect Five Coins"
	key = "five_coins"
	global_struct = global.struct_foods
	global_struct_key = "candy"
	ds_player_list = o_player_controll.ds_foods
	sprite = s_apple_pickup
	description = "Collect five coins to unlock a special reward."
	progress = {
		text:  "Collected Coins ",
		max_count: 5
	}

	save_progress_value = o_player_controll.ds_quests[?"five_coins"];
		
	function_condition = function(){
		if complete exit
		save_progress_value.progress =  o_player_controll.ds_tracker[? "collectables"].coins
		if save_progress_value.progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
			add_quest("new_adventure_begins");
			add_quest("monster_hunt");
		}
	}
}

function quest_unlock_new_food_1() : constructor_quest() constructor {
	name = "Unlock new Food"
	key = "unlock_new_food_1"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_chocolate"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_apple_pickup
	description = "Collect coins to unlock a special food."
	progress = {
		text:  "Collected Coins ",
		max_count: 80
	}


		
	function_condition = function(){
		if complete exit
		 o_player_controll.ds_quests[?"unlock_new_food_1"].progress =  o_player_controll.ds_tracker[? "collectables"].coins
		if o_player_controll.ds_quests[?"unlock_new_food_1"].progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
		}
	}
}

function quest_unlock_new_food_2() : constructor_quest() constructor {
	name = "Unlock new Food"
	key = "unlock_new_food_2"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_ice_cream"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_apple_pickup
	description = "Collect coins to unlock a special food."
	progress = {
		text:  "Collected Coins ",
		max_count: 170
	}


		
	function_condition = function(){
		if complete exit
		 o_player_controll.ds_quests[?"unlock_new_food_2"].progress =  o_player_controll.ds_tracker[? "collectables"].coins
		if o_player_controll.ds_quests[?"unlock_new_food_2"].progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
		}
	}
}

function quest_new_adventure_begins() : constructor_quest() constructor {
	name = "A new adventure begins!"
	key = "new_adventure_begins"
	track_key = "coins"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_spike_head"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_unlock_spike_head
	description = "It's time to prepare to your new adventure!"
	progress = {
		text:  "Collected Coins: ",
		max_count: 50
	}

	function_condition = function(){
		if complete exit
		o_player_controll.ds_quests[?"new_adventure_begins"].progress = o_player_controll.ds_tracker[? "collectables"].coins
		if o_player_controll.ds_quests[?"new_adventure_begins"].progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
			add_quest("unlock_new_food_1");
			add_quest("unlock_new_food_2");
		}
	}
}

function quest_monster_hunter() : constructor_quest() constructor {
	name = "Monster Hunt"
	key = "monster_hunt"
	track_key = "monster"	
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_snail"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_apple_pickup
	description = "Defeat 20 monsters to unlock a special reward."
	progress = {
		text:  "Defeated Monsters: ",
		max_count: 20
	}
		
	function_condition = function(){
		if complete exit
		o_player_controll.ds_quests[?"monster_hunt"].progress = o_player_controll.ds_tracker[? "monsters"].eliminations
		if o_player_controll.ds_quests[?"monster_hunt"].progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
		}
	}
}
	


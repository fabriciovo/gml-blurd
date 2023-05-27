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

	description = ""
	sprite = noone
	unlocked = false
	
	function_condition = function(){
		var _track_value = ds_map_find_value(o_player_controll.ds_collectables, track_key);
		var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, key);
		if is_undefined(_track_value) exit
		if is_undefined(_save_progress_value) exit
		_save_progress_value.progress = _track_value.value
		if _save_progress_value.progress >= progress.max_count {
	
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			key)
		}
	}
}


//Start quest
function quest_collect_five_coins() : constructor_quest() constructor {
	name = "Collect Five Coins"
	key = "collect_five_coins"
	track_key = "coins"	
	global_struct = global.struct_foods
	global_struct_key = "candy"
	ds_player_list = o_player_controll.ds_foods
	sprite = s_apple_pickup
	description = "Collect five coins to unlock a special reward."
	progress = {
		text:  "Collected Coins ",
		max_count: 5
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
}


function quest_monster_hunter() : constructor_quest() constructor {
	name = "Monster Hunt"
	key = "monster_hunt"
	track_key = "monster"	
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_chocolate"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_apple_pickup
	description = "Defeat 20 monsters to unlock a special reward."
	progress = {
		text:  "Defeated Monsters: ",
		max_count: 20
	}
}

function quest_quick_harvest() : constructor_quest() constructor {
	name = "Quick Harvest"
	key = "quick_harvest"
	track_key =  "coins"
	ds_player_list = o_player_controll.ds_foods
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_ice_cream"
	sprite = s_ten_coins
	description= "Collect 50 coins in a single stage without letting any monsters escape."
	progress = {
		text:  "Collected Coins: ",
		max_count: 10
	}
}

function quest_exploration_mission() : constructor_quest() constructor {
	name = "Exploration Mission"
	key ="exploration_mission"
	track_key = "coins"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_chocolate"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_unlock_chocolate
	progress = {
		text:  "Collected Coins: ",
		max_count: 15
	}
}

function quest_strategic_elimination() : constructor_quest() constructor {
	name = "Strategic Elimination"
	key = "strategic_elimination"
	track_key = "strategic_elimination"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_snail"
	ds_player_list = o_player_controll.ds_upgrades
	sprite = s_unlock_spike_head
	description = "Eliminate 10 monsters without collecting any coins."
	progress = {
		text:  "Collected Coins: ",
		max_count: 10
	}
}


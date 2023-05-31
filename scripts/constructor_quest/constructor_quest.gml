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
	track_value = noone
	save_progress_value = noone
	
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


//Start quest
function quest_collect_five_coins() : constructor_quest() constructor {
	name = "Collect Five Coins"
	global_struct = global.struct_foods
	global_struct_key = "candy"
	ds_player_list = o_player_controll.ds_foods
	sprite = s_apple_pickup
	description = "Collect five coins to unlock a special reward."
	progress = {
		text:  "Collected Coins ",
		max_count: 5
	}
	unlocked = true
	track_value = o_player_controll.ds_tracker[? "collectables"].coins;
	save_progress_value = o_player_controll.ds_quests[?"five_coins"];
	
		
	function_condition = function(){
		save_progress_value.progress =  o_player_controll.ds_tracker[? "collectables"].coins
		if save_progress_value.progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			ds_player_list,
			_reward_struct,
			"five_coins")
		}
	}
}

//function quest_new_adventure_begins() : constructor_quest() constructor {
//	name = "A new adventure begins!"
//	key = "new_adventure_begins"
//	track_key = "coins"
//	global_struct = global.struct_upgrade_unlockable
//	global_struct_key = "unlock_spike_head"
//	ds_player_list = o_player_controll.ds_upgrades
//	sprite = s_unlock_spike_head
//	description = "It's time to prepare to your new adventure!"
//	progress = {
//		text:  "Collected Coins: ",
//		max_count: 50
//	}
//}


//function quest_monster_hunter() : constructor_quest() constructor {
//	name = "Monster Hunt"
//	key = "monster_hunt"
//	track_key = "monster"	
//	global_struct = global.struct_upgrade_unlockable
//	global_struct_key = "unlock_chocolate"
//	ds_player_list = o_player_controll.ds_upgrades
//	sprite = s_apple_pickup
//	description = "Defeat 20 monsters to unlock a special reward."
//	progress = {
//		text:  "Defeated Monsters: ",
//		max_count: 20
//	}
//}

//function quest_quick_harvest() : constructor_quest() constructor {
//	name = "Quick Harvest"
//	key = "quick_harvest"
//	track_key =  "coins"
//	ds_player_list = o_player_controll.ds_foods
//	global_struct = global.struct_upgrade_unlockable
//	global_struct_key = "unlock_ice_cream"
//	sprite = s_ten_coins
//	description= "Collect 50 coins in a single stage without letting any monsters escape."
//	progress = {
//		text:  "Collected Coins: ",
//		max_count: 10
//	}
//}

//function quest_exploration_mission() : constructor_quest() constructor {
//	name = "Exploration Mission"
//	key ="exploration_mission"
//	track_key = "coins"
//	global_struct = global.struct_upgrade_unlockable
//	global_struct_key = "unlock_chocolate"
//	ds_player_list = o_player_controll.ds_upgrades
//	sprite = s_unlock_chocolate
//	progress = {
//		text:  "Collected Coins: ",
//		max_count: 15
//	}
//}

//function quest_strategic_elimination() : constructor_quest() constructor {
//	name = "Strategic Elimination"
//	key = "strategic_elimination"
//	track_key = "strategic_elimination"
//	global_struct = global.struct_upgrade_unlockable
//	global_struct_key = "unlock_snail"
//	ds_player_list = o_player_controll.ds_upgrades
//	sprite = s_unlock_spike_head
//	description = "Eliminate 10 monsters without collecting any coins."
//	progress = {
//		text:  "Collected Coins: ",
//		max_count: 10
//	}
//}


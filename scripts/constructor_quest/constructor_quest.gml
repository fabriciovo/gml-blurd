function constructor_quest() constructor {
	name = ""
	key = ""
	track_key = ""
	global_struct = noone
	global_struct_key = noone
	ds_player_list = noone
	progress = {
		text: "",
		max_count: 0
	}

	description = ""
	sprite = s_item
	unlocked = false
	
	function_condition = function(){
		var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
		var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, key);
		if is_undefined(_track_value) exit
		if is_undefined(_save_progress_value) exit
		_save_progress_value.progress = _track_value.value
		if _save_progress_value.progress >= progress.max_count {
	
			var _reward_struct = variable_struct_get(global_struct, global_struct_key)
			quest_reward(
			o_player_controll.ds_foods,
			_reward_struct,
			key)
		}
	
	}

}

function quest_five_coins() : constructor_quest() constructor {
	name = "Five Coins"
	key = "five_coins"
	track_key = "coins"	
	global_struct = global.struct_foods
	global_struct_key = "candy"

	progress = {
		text:  "Collected Coins: ",
		max_count: 5
	}
}

function quest_ten_coins() : constructor_quest() constructor {
	name = "Ten Coins"
	key = "ten_coins"
	track_key =  "coins"

	global_struct = global.struct_foods
	global_struct_key = "ice_cream"
	
	progress = {
		text:  "Collected Coins: ",
		max_count: 10
	}

}

function quest_unlock_chocolate() : constructor_quest() constructor {
	name = "Unlock Chocolate"
	key = "chocolate"
	track_key = "coins"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_chocolate"

	progress = {
		text:  "Collected Coins: ",
		max_count: 15
	}

	
}

function quest_unlock_spike_head() : constructor_quest() constructor {
	name = "New Challenges"
	key = "spike_head"
	track_key = "coins"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_spike_head"

	progress = {
		text:  "Collected Coins: ",
		max_count: 50
	}


}

function quest_unlock_ice_cream() : constructor_quest() constructor {
	name = "New Challenges"
	key = "ice_cream"
	track_key = "coins"
	global_struct = global.struct_upgrade_unlockable
	global_struct_key = "unlock_ice_cream"
	
	progress = {
		text:  "Collected Coins: ",
		max_count: 100
	}

}


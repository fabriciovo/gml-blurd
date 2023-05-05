// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_quest() constructor {
	name = ""
	key = ""
	progress = {
		text: "",
		max_count: 0
	}

	description = ""
	sprite = s_item
	unlocked = false
	
	function_condition = function(){}

}

function quest_five_coins() : constructor_quest() constructor {
	name = "Five Coins"
	key = "five_coins"
	progress = {
		text:  "Collected Coins: ",
		max_count: 5
	}

	function_condition = function(){
		var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
		var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, "five_coins");
		if is_undefined(_track_value) exit
		if is_undefined(_save_progress_value) exit
		_save_progress_value.progress = _track_value.value
		if _save_progress_value.progress >= progress.max_count {
				var _reward_struct = variable_struct_get(global.struct_foods, "candy")
				
				quest_reward(
				o_player_controll.ds_foods,
				_reward_struct,
			    key)
		}
	}
}

function quest_ten_coins() : constructor_quest() constructor {
	name = "Ten Coins"
	key = "ten_coins"
	progress = {
		text:  "Collected Coins: ",
		max_count: 10
	}

	function_condition = function(){
		var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
		var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, "ten_coins");
		if is_undefined(_track_value) exit
		if is_undefined(_save_progress_value) exit
		_save_progress_value.progress = _track_value.value
		if _save_progress_value.progress >= progress.max_count {
				var _reward_struct = variable_struct_get(global.struct_foods, "ice_cream")
				
				quest_reward(
				o_player_controll.ds_foods,
				_reward_struct,
			    key)
		}
	}
}

function quest_chocolate() : constructor_quest() constructor {
	name = "Unlock Chocolate"
	key = "chocolate"
	progress = {
		text:  "Collected Coins: ",
		max_count: 15
	}

	function_condition = function(){
		var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
		var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, key);
		if is_undefined(_track_value) exit
		if is_undefined(_save_progress_value) exit
		_save_progress_value.progress = _track_value.value
		if _save_progress_value.progress >= progress.max_count {
				var _reward_struct = variable_struct_get(global.struct_upgrade_unlockable, "unlock_chocolate")
				
				quest_reward(
				o_player_controll.ds_upgrades,
				_reward_struct,
			    key)
		}
	}
}

function quest_monsters() : constructor_quest() constructor {
	name = "New Challenges"
	key = "monsters"
	progress = {
		text:  "Collected Coins: ",
		max_count: 20
	}

	function_condition = function(){
		var _track_value = ds_map_find_value(o_player_controll.ds_collectables, "coins");
		var _save_progress_value = ds_map_find_value(o_player_controll.ds_quests, key);
		if is_undefined(_track_value) exit
		if is_undefined(_save_progress_value) exit
		_save_progress_value.progress = _track_value.value
		if _save_progress_value.progress >= progress.max_count {
			var _reward_struct = variable_struct_get(global.struct_upgrade_unlockable, "unlock_spike_head")
				
			quest_reward(
			o_player_controll.ds_upgrades,
			_reward_struct,
			key)
		}
	}
}
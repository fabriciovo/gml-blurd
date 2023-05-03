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
				show_message("asdasdsdaasd")
				
				quest_reward(
				o_player_controll.ds_foods,
				_reward_struct,
			    key)
		}
	}
}
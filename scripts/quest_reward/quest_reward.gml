// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest_reward(_player_ds_list, _reward_struct, _quest_key){
	var _player = o_player_controll
	var _quest = o_quest_controll_update.struct_quests[$ _quest_key]
	var _name = _quest.name
	var _sprite = _quest.sprite
	
	_quest.complete = true

	ds_map_add(_player.ds_quests_completed,_quest_key,_quest.basic_struct());

	ds_map_delete(_player.ds_quests, _quest_key);
	

	
	ds_map_add(_player_ds_list,_reward_struct.key, _reward_struct.function_reward())	
	instance_create_layer(global.VW / 2,50,"Instances", o_pop_up, new pop_up(_name, _sprite))
}
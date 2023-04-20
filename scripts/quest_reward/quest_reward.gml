// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest_reward(_player_ds_list, _reward_key, _reward, _quest_key){
	var _player = o_player_controll

	var _quest = variable_struct_get(global.struct_quests, _quest_key)
	var _name = _quest.name
	var _sprite = _quest.sprite
	
	_quest.unlocked = true
	_player.ds_quests[? _quest_key].unlocked = true

	ds_map_add(_player_ds_list,_reward_key, _reward)	
	show_message(ds_map_find_first(_player_ds_list))
	instance_create_layer(global.VW / 2,50,"Instances", o_quest_ui, new quest_ui(_name, _sprite))
}
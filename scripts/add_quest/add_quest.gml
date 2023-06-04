// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_quest(_quest_key){

	var _player = o_player_controll
	show_message( o_quest_controll_update.struct_quests[$ _quest_key])
	var _quest = o_quest_controll_update.struct_quests[$ _quest_key]
	
	show_message(_quest_key)
	var _name = _quest.name
	var _sprite = _quest.sprite
	
	ds_map_add(_player.ds_quests,_quest_key,_quest.basic_struct());
	
	instance_create_layer(global.VW / 2,50,"Instances", o_pop_up, new pop_up(_name, _sprite, "New Quest Unlocked!"))
}
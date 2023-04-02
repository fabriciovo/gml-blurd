// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest_reward(_player_array, _reward, _quest){
	var _array_quests = o_player_controll.player.quests
	var _name = _quest.name
	var _sprite = _quest.sprite
	
	_quest.unlocked = true
	
	var _quest_for_player = {
		name: _quest.name,
		description: _quest.description,
		sprtie: _quest.sprite,
		unlocked: _quest.unlocked,
	}
	array_push(_player_array, _reward)
	array_push(_array_quests,_quest_for_player)
	instance_create_layer(global.VW / 2,50,"Instances", o_quest_ui, new quest_ui(_name, _sprite))
}
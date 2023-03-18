// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function achivment_reward(_player_array, _reward, _achivment){
	var _array_achivments = o_player_controll.player.achivments;
	_achivment.unlocked = true
	var _achivment_for_player = {
		name: _achivment.name,
		description: _achivment.description,
		sprtie: _achivment.sprite,
		unlocked: _achivment.unlocked,
	}
	array_push(_player_array, _reward)
	array_push(_array_achivments,_achivment_for_player)
	instance_create_layer(50,50,"Instances", o_achviment_ui, new achivment_ui("sdasdasas", s_item))
}
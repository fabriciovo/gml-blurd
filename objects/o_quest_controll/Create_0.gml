struct_quests = {
	//five_coins: new quest_five_coins(),
	//ten_coins: new quest_ten_coins(),
	collect_five_coins: new quest_collect_five_coins(),
	unlock_spike_head: new quest_unlock_spike_head(),
}



var _player_quests = o_player_controll.ds_quests
var _keys = variable_struct_get_names(struct_quests);
var _global_struct_size = array_length(_keys)-1
for (var _i =_global_struct_size; _i >= 0; --_i) {
	var _k = _keys[_i]
	var _quest = variable_struct_get(struct_quests, _k)
	if is_undefined(ds_map_find_value(_player_quests,_k)) {
		ds_map_add(_player_quests,_k, {progress:0, unlocked: false})
	}else {
		_quest.unlocked = _player_quests[? _k].unlocked
	}
	
}
	
	
	

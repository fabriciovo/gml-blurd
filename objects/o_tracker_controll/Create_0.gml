var _player_quests = o_player_controll.ds_quests

var _keys = variable_struct_get_names(global.struct_quests);
var _global_struct_size = array_length(_keys)-1
for (var _i =_global_struct_size; _i >= 0; --_i) {
	var _k = _keys[_i]
	var _quest = variable_struct_get(global.struct_quests, _k)
	
	if is_undefined(ds_map_find_value(_player_quests,_k)) {
		ds_map_add(_player_quests,_k, {progress:0, unlocked: false})
	}else {
		_quest.unlocked = _player_quests[? _k].unlocked
	}
	
}
	
	
	

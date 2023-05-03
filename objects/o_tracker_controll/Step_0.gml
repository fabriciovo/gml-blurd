var _array_quests_size = variable_struct_names_count(global.struct_quests)
var _keys = variable_struct_get_names(global.struct_quests);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i];
	var _quest = variable_struct_get(global.struct_quests, _k);
	for(var _n = 0; _n < _array_quests_size; _n++){
		if _quest.unlocked continue
		_quest.function_condition()
	}
}
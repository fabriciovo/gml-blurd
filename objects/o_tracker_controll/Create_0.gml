var _player_quests = o_player_controll.ds_quests
var _player_quests_array = ds_map_values_to_array(_player_quests)
var _player_quests_lenght = array_length(_player_quests)
if _player_quests_lenght == 0 exit

var _keys = variable_struct_get_names(global.struct_quests);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i]
	var _quest = variable_struct_get(global.struct_quests, _k)
	for(var _n = 0; _n < _player_quests_lenght; _n++){
		if(_player_quests_array[_n].name == _quest.name ){
			_quest.unlocked = true
		}
	}
}
	
	
	

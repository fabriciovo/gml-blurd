var _player_achivments_lenght = array_length(o_player_controll.player.achievements)
if _player_achivments_lenght == 0 exit

var _array_achivments_size = variable_struct_names_count(global.achievements)
var _keys = variable_struct_get_names(global.achievements);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i]
	var _achivment = variable_struct_get(global.achievements, _k)
	var _player_achivments = o_player_controll.player.achievements
	for(var _n = 0; _n < _player_achivments_lenght; _n++){
		if(_player_achivments[_n].name == _achivment.name ){
			_achivment.unlocked = true
		}
	}
}
	
	
	

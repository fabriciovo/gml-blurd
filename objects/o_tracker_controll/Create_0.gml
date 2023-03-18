/// @description Insert description here
// You can write your code in this editor

_array_achivments_size = array_length(global.achivments)

var _player_achivments = o_player_controll.player.achivments
var _keys = variable_struct_get_names(global.achivments);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i];
	var _achivment = variable_struct_get(global.achivments, _k);
	for(var _n = 0; _n < _array_achivments_size; _n++){
		if(_player_achivments[_n].name == _achivment.name ){
			_achivment.unlocked = true
		}
	}
}
	
	
	

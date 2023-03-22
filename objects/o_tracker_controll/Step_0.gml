var _array_achivments_size = variable_struct_names_count(global.achivments)
var _keys = variable_struct_get_names(global.achivments);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i];
	var _achivment = variable_struct_get(global.achivments, _k);
	for(var _n = 0; _n < _array_achivments_size; _n++){
		if _achivment.unlocked continue
		_achivment.condition()
	}
}
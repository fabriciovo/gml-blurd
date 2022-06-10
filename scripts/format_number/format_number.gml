// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function format_number(_number){
	var _text = string(_number);
	
	var _type_numbers = {
		"G": 1000000000,
		"F": 100000000,
		"E": 10000000,
		"D": 1000000,
		"C": 100000,
		"B": 10000,
		"A": 1000,
		
		
		
		
		
		
	}

	var _keys = variable_struct_get_names(_type_numbers);
	for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	    var _k = _keys[_i];
	    var _item = variable_struct_get(_type_numbers, _k);

		if(_number >= _item){
			_text = string_format(_number,1,0) + " " + _k;
		}
		
	}
		
	show_message(_text)
	return _text;
}
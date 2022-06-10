/// @description Insert description here
// You can write your code in this editor
var _characters = global.characters;
var _keys = variable_struct_get_names(_characters);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i];
	var _item = variable_struct_get(_characters, _k);
	var _obj = instance_create_layer(x,y ,"Instances", _item);
}

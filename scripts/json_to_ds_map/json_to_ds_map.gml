/// @description Parse a JSON string into a ds_map
/// @param {string} json_string - The JSON string to parse
/// @return {ds_map} The ds_map containing the parsed JSON data
function json_add_to_ds_map(_j,_map) {
	var _json = json_parse(_j);
    var _key, _value;
	var _keys = variable_struct_get_names(_json)
	var _size = array_length(_keys)
	
    for(var i = 0; i < _size; i++) {
        _key = _keys[i]
        _value = _json[$ _key]
        ds_map_add(_map, _key, _value);
    }
}


var _size_secret_items = array_length(global.secret_items);
for(var _i = 0; _i < _size_secret_items; _i++){
	var _player_array = o_player_controll.player.secret_items
	if not array_get_index(_player_array, _i) {
		_player_array[_i] = 0;
	}
	global.secret_items[_i].count = _player_array[_i]
}


var _size_craft_bag = array_length(global.craft_bag);
for(var _i = 0; _i < _size_craft_bag; _i++){
	var _player_array = o_player_controll.player.craft_items
	if not array_get_index(_player_array, _i) {
		_player_array[_i] = 0;
	}
	global.craft_bag[_i].count = _player_array[_i]
}
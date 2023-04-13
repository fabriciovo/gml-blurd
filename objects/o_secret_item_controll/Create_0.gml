
var _size_secret_items = array_length(global.array_secret_items);
for(var _i = 0; _i < _size_secret_items; _i++){
	var _player_array = o_player_controll.player.secret_items
	global.array_secret_items[_i].count = _player_array[_i]
}


var _size_craft_bag = array_length(global.array_craft_bag);
for(var _i = 0; _i < _size_craft_bag; _i++){
	var _player_array = o_player_controll.player.craft_items
	global.array_craft_bag[_i].count = _player_array[_i]
}
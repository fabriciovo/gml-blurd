
var _size_secret_items = array_length(o_player_controll.player.secret_items);
for(var _i = 0; _i < _size_secret_items; _i++){
	global.secret_items[_i].count = o_player_controll.player.secret_items[_i];
}



var _size_craft_bag = array_length(o_player_controll.player.craft_items);
for(var _i = 0; _i < _size_craft_bag; _i++){
	global.craft_bag[_i].count = o_player_controll.player.craft_items[_i];
}
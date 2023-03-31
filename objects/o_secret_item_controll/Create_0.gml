
var _size = array_length(o_player_controll.player.secret_items);
for(var _i = 0; _i < _size; _i++){
	global.secret_items[_i].count = o_player_controll.player.secret_items[_i];
}
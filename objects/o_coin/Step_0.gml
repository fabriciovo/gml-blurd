
var _dis = distance_to_object(o_player);
if(_dis < 3) {
	move_towards_point(o_player.x,o_player.y, 3);
}else{
	hspeed = global.game_speed;
}
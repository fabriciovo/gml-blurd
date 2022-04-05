/// @description Insert description here
// You can write your code in this editor

for(var i = 1; i <= 3; i++){
	draw_sprite(spr_heart,1,x+12 * i,y);
}

for(var i = 1; i <= obj_player_stats.hp; i++){
	draw_sprite(spr_heart,0,x+12 * i,y);
}

/// @description Insert description here
// You can write your code in this editor

for(var i = 1; i <= obj_player_stats.max_energy; i++){
	draw_sprite_ext( spr_energy, 0,x+12 * i,y, image_xscale, image_yscale, image_angle, c_black, image_alpha );
}

for(var i = 1; i <= obj_player_stats.energy; i++){
	draw_sprite(spr_energy,0,x+12 * i,y);
}

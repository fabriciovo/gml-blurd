/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_at01);
draw_set_color(c_white);
draw_text_transformed(room_width, room_height - 320, string(global.coins),6,6,image_angle);
draw_text_transformed(room_width - 40, room_height - 260, "+ " +string_format(global.coins_per_second,0,2),3,3,image_angle);
draw_sprite_ext(s_coin,0,room_width - 40, room_height - 274, 2, 2, 0,c_white,1);
draw_text(x,y,coins_delay_ * global.one_second);

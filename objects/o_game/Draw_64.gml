/// @description  Draw the stats
switch(room){
    case rm_title:
        draw_set_halign(fa_center);
        draw_set_font (fnt_at01);
        draw_text_transformed_color(room_width+4, room_width/2, string_hash_to_newline("Blurd"),5,5,image_angle,c_black, c_black, c_black, c_black, 1);
        draw_text_transformed_color(room_width, room_width/2, string_hash_to_newline("Blurd"),5,5,image_angle, c_white, c_white, c_white, c_white, 1);
	break;
		
	case rm_game:
		draw_set_font(fnt_at01);
		draw_set_color(c_white);
		draw_text_transformed(room_width, room_height - 320, coins_formated_,6,6,image_angle);
		draw_text_transformed(room_width - 40, room_height - 260, "+ " +string_format(global.coins_per_second,0,2),3,3,image_angle);
		draw_sprite_ext(s_coin,0,room_width - 40, room_height - 274, 2, 2, 0,c_white,1);
		draw_text(x,y,coins_delay_ * global.one_second);
	break;
}





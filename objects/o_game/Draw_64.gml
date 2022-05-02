/// @description  Draw the stats
switch(room){
    case rm_title:
        draw_set_halign(fa_center);
        draw_set_font (fnt_at01);
        draw_text_transformed_color(room_width+4, room_width/2, string_hash_to_newline("Blurd"),5,5,image_angle,c_black, c_black, c_black, c_black, 1);
        draw_text_transformed_color(room_width, room_width/2, string_hash_to_newline("Blurd"),5,5,image_angle, c_white, c_white, c_white, c_white, 1);
        break;
}



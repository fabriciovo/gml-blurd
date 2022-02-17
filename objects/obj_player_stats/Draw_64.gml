/// @description  Draw the stats
switch(room){
    case rm_menu:
        draw_set_halign(fa_center);
        draw_set_font(fnt_score);
        draw_text_colour(room_width/2+4, room_width/2+200, string_hash_to_newline("Blurd"), c_black, c_black, c_black, c_black, 1);
        draw_text_colour(room_width/2, room_width/2+196, string_hash_to_newline("Blurd"), c_white, c_white, c_white, c_white, 1);
        //draw_sprite_ext(spr_life,0,room_width/2-134,room_height/2,10,10,0,c_white,1);
        //draw_sprite_ext(spr_player,1,room_width/2,room_height/2,10,10,0,c_white,1);
        draw_set_font(fnt_score);
        draw_text_colour(room_width/2+2, room_height-150, string_hash_to_newline("[CLICK] #to Start"), c_black, c_black, c_black, c_black, 1);
        draw_text_colour(room_width/2, room_height-148, string_hash_to_newline("[CLICK] #to Start"), c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1);
        break;
   
        
    default:
            draw_set_font(fnt_score);
    draw_text_colour(__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.HView, 0 )/2-175,string_hash_to_newline(string(highscore)), c_white, c_white, c_white,c_white,1);
 
        
    break;
                

    }



draw_self();
draw_set_alpha(0.6);
draw_rectangle_color(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black, false);

draw_set_font(fnt_score);
draw_sprite(spr_gameOver,0,room_width/2,room_height/2);
draw_text_colour(room_width/2, room_height/2, string_hash_to_newline("Score: "+string(obj_player_stats.highscore)), c_ltgray, c_ltgray, c_ltgray,c_ltgray,1);

//draw_text_colour(room_width/2, room_height/2, "Score: "+string(obj_player_stats.bestHighscore), c_ltgray, c_ltgray, c_ltgray,c_ltgray,1);
//draw_button(room_width/2+54, room_height/2,room_width/2, room_height/2, !mouse_check_button(mb_left)); 



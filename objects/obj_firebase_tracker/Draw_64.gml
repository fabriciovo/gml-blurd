/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_start_game);
draw_set_color(c_white);
draw_text(x+10,y,"uid: " + FirebaseAuthentication_GetUID())
draw_text(x+10,y+14,"name: " + FirebaseAuthentication_GetDisplayName())

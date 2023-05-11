///@description Draw caps
draw_set_font(fnt_text);
draw_set_colour(c_black);
draw_text((room_width/2)+16,(room_height/2)+20,"Caps Lock is " + caps);

draw_text(8,8,"Characters set as excluded are ! and ;\nusername box is set to 5 lines, password box is set to 1 line and hidden with *\nswitch between boxes by pressing Tab\ncut, copy, paste from clipboard is Windows only - set to disabled for password box");
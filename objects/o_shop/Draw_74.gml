draw_set_colour(c_white);
draw_rectangle(40, 100, global.VW - 40, global.VH - 100, true);
draw_set_colour(c_gray);
draw_rectangle(40, 100, global.VW - 40, global.VH - 100, false);

draw_sprite_ext(s_shop_background,0,global.VW / 2, global.VH / 2,10,15,image_angle,image_blend,image_alpha)
if !instance_exists(o_player_bonus) or o_player_bonus.lose {
	draw_set_alpha(0.7)
	draw_set_color(c_black)
	draw_rectangle(0,0, global.VW, global.VH,false)
	draw_set_alpha(1)
}
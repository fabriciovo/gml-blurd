if room == rm_game {
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_set_font(fnt_ui)
	draw_text(global.VW / 2,-4, f_format_number(coins))
	draw_text(global.VW / 2 - 12,28 , "+" + f_format_number(coins_per_second))
}
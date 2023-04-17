if room == rm_game {
	draw_set_font(fnt_ui)
	draw_text(global.VW / 2,-4, coins)
	draw_text(global.VW / 2 - 12,28 , "+" + string(coins_per_second))
}
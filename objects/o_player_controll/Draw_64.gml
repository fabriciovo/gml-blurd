if room == rm_game {
	draw_text(global.VW / 2,-4, player.coins)
	draw_text(global.VW / 2 - 12,28 , "+" + string(player.coins_per_second))
}
if room == rm_game {
	var _bkg_layer_id = layer_get_id("Backgrounds_1");
	var _bkg_id = layer_background_get_id(_bkg_layer_id);
	layer_background_speed(_bkg_id,global.game_speed)
}


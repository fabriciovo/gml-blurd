if room == rm_game {
	var _bkg_layer_id = layer_get_id("Backgrounds_1");
	var _bkg_id = layer_background_get_id(_bkg_layer_id);
	layer_background_speed(_bkg_id,global.game_speed)
}
if room == rm_title {
	if mouse_check_button_pressed(mb_left) and not instance_exists(o_transition) {
		instance_create_layer(x,y,"Instances",o_transition, new constructor_transition(s_trans_sq,rm_init))
	}
}

if room == rm_firestore_loading {
	instance_destroy()
}
if room == rm_title {
	if mouse_check_button_pressed(mb_left) and not instance_exists(o_transition) {
		instance_create_layer(x,y,"Instances",o_transition, new constructor_transition(s_trans_sq,rm_init))
	}
}

y = y + sin(timer * 0.03) * 0.5
timer++
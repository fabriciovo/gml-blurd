if !o_bonus_stage_controller.start exit


if mouse_check_button_pressed(mb_left) and not lose {
	vsp = jump
}

if lose {
	//TODO change sprite
	image_angle += 33
}

Apply_Gravity()


if y > global.VH {
	instance_destroy()
}
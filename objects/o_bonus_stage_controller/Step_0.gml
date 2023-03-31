if mouse_check_button_pressed(mb_left) and start == false {
	start = true
}


if !instance_exists(o_player_bonus) and mouse_check_button_pressed(mb_left) {
	room_goto(rm_game)
}
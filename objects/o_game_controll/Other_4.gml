switch(room){
	case rm_init:
		if file_exists("user.ini") {
			read_player_info()
		}else{
			room_goto(rm_title)
		}
	break
	case rm_game:
	break
}

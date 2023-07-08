switch(room){
	case rm_init:
		//if file_exists("FirebaseRESTAPI.data") {
		//	read_player_info()
		//}else{
		//	room_goto(rm_title)
		//}
		room_goto(rm_game)
	break
	case rm_game:
		alarm[0] = 500
	break
}

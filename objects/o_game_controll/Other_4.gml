switch(room){
	case rm_init:
		var a = ds_map_secure_load("p_data.dat");
		var _buff = buffer_load("p_data.dat");
		map = ds_map_secure_load_buffer(_buff);
		show_message(map)
		show_message(map.player)
		show_message(_buff)
		room_goto_next()
	break
	case rm_game:
		//pass
	break
}

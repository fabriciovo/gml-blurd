// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function write_player_info(_refresh_token){
	ini_open("user.ini");
	ini_write_string("refresh_token","player", _refresh_token);
	ini_close();
}

function read_player_info(){
	ini_open("user.ini")
	var _refresh_token = ini_read_string("refresh_token","player","token");
	ini_close();

	if _refresh_token != "" {
		FirebaseAuthentication_SignInWithCustomToken(_refresh_token)
	}else{
		room_goto(rm_title)
	}
}


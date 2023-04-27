// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function write_player_info(_email, _password){
	ini_open("user.ini");
	ini_write_string("email","player", _email);
	ini_write_string("password","player", _password);
	ini_close();
}

function read_player_info(){
	if (file_exists("user.ini")) {
		ini_open("user.ini")
		var _email = ini_read_string("email", "player","email");
		var _password = ini_read_string("password", "player","password");
		ini_close();

		if (_email != "" and _password != "") {
		    //FirebaseAuthentication_SignInWithCustomToken(global.aceess_token);
		}
	}
}


function firebase_create(){
	var _player = o_player_controll.player
	var _json = json_stringify(_player)
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Set(_json)
}

function firebase_load(){
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Read()
}

function firebase_update(){
	var _player = o_player_controll.player
	var _json = json_stringify(_player)

	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Update(_json);
}
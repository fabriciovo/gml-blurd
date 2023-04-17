function firebase_create(){
	var _player = o_player_controll.player
	var _json = json_stringify(_player)
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Set(_json)
}

function firebase_load(){
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Read()
}

function firebase_update(){
	var _map = ds_map_create()
	var _player = o_player_controll
	_map[?"total_coins"] = _player.total_coins
	_map[?"coins"] = _player.coins
	_map[?"coins_per_second"] = _player.coins_per_second
	_map[?"shop_items"] = _player.ds_shop_items
	//_map[?"upgrades"] = _player.upgrades
	//_map[?"shop_items"] = json_stringify(_player.shop_items)
	//_map[?"craft_items"] = json_stringify(_player.craft_items)
	//_map[?"quests"] = json_stringify(_player.quests)
	//_map[?"secret_items"] = json_stringify(_player.secret_items)		
	//_map[?"track"] = json_stringify(_player.track)

	var _json = json_encode(_map)		
	
	ds_map_destroy(_map)

	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Update(_json);

}


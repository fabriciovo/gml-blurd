function firebase_create(){
	var _map = ds_map_create()
	var _player = o_player_controll
	_map[?"total_coins"] = _player.total_coins
	_map[?"coins"] = _player.coins
	_map[?"coins_per_second"] = _player.coins_per_second
	_map[?"shop_items"] = json_encode(_player.ds_shop_items)
	_map[?"upgrades"] = json_encode(_player.ds_upgrades)
	_map[?"quests"] = json_encode(_player.ds_quests)
	_map[?"collectables"] = json_encode(_player.ds_collectables)
	_map[?"secret_items"] = json_encode(_player.ds_secret_items)
	_map[?"craft_items"] = json_encode(_player.ds_craft_items)
	var _json = json_encode(_map)		
	
	ds_map_destroy(_map)
		
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Set(_json)
	FirebaseAuthentication_GetIdToken()
}

function firebase_load(){
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Read
}

function firebase_update(){
	var _map = ds_map_create()
	var _player = o_player_controll
	_map[?"total_coins"] = _player.total_coins
	_map[?"coins"] = _player.coins
	_map[?"coins_per_second"] = _player.coins_per_second
	_map[?"shop_items"] = json_encode(_player.ds_shop_items)
	_map[?"upgrades"] = json_encode(_player.ds_upgrades)
	_map[?"quests"] = json_encode(_player.ds_quests)
	_map[?"collectables"] = json_encode(_player.ds_collectables)
	_map[?"secret_items"] = json_encode(_player.ds_secret_items)
	_map[?"craft_items"] = json_encode(_player.ds_craft_items)

	var _json = json_encode(_map)		
	ds_map_destroy(_map)
	
	

	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Update(_json);

}


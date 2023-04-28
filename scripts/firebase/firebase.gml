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
	
	FirebaseFirestore("Users").Child(string(FirebaseAuthentication_GetUID())).Set(_json)
	FirebaseAuthentication_GetIdToken()
	room_goto(rm_game)
}
function firebase_firestore_load(_value){
	var _json = json_parse(_value)
	var _player =  o_player_controll;
		
	//single value
	_player.coins = real(_json.coins);
	_player.coins_per_second = real(_json.coins_per_second);
	_player.total_coins = real(_json.total_coins);
		
	//maps
	json_add_to_ds_map(_json.shop_items,o_player_controll.ds_shop_items)
	json_add_to_ds_map(_json.collectables,o_player_controll.ds_collectables)
	json_add_to_ds_map(_json.quests,o_player_controll.ds_quests)
	json_add_to_ds_map(_json.upgrades,o_player_controll.ds_upgrades)
	json_add_to_ds_map(_json.craft_items,o_player_controll.ds_craft_items)
	json_add_to_ds_map(_json.secret_items,o_player_controll.ds_secret_items)
	room_goto(rm_game)
}

function firebase_firestore_read(){	
	FirebaseAuthentication_GetIdToken()
	FirebaseFirestore("Users").Child(string(FirebaseAuthentication_GetUID())).Read()
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

	FirebaseFirestore("Users").Child(string(FirebaseAuthentication_GetUID())).Update(_json)
}


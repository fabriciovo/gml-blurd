function firebase_create(){
	var _map = ds_map_create()
	var _player = o_player_controller
	
	//init tracker values
	ds_map_set(o_player_controller.ds_quests,"five_coins",{key:"five_coins", progress:0, unlocked: true, complete: false})
	ds_map_set(o_player_controller.ds_tracker,"collectables",{coins:0})
	ds_map_set(o_player_controller.ds_tracker,"monsters",{eliminations:0,
		spike_head:0, snail:0, angry_bird:0})
	ds_map_set(o_player_controller.ds_tracker,"quick_harvest",{eliminations:0,
		spike_head:0, snail:0, angry_bird:0})
	
	
	_map[?"total_coins"] = _player.total_coins
	_map[?"coins"] = _player.coins
	_map[?"coins_per_second"] = _player.coins_per_second
	_map[? "coins_out_game"] = _player.coins_out_game
	_map[?"foods"] = json_encode(_player.ds_foods)
	_map[?"upgrades"] = json_encode(_player.ds_upgrades)
	_map[?"quests"] = json_encode(_player.ds_quests)
	_map[?"tracker"] = json_encode(_player.ds_tracker)
	_map[?"secret_items"] = json_encode(_player.ds_secret_items)
	_map[?"craft_items"] = json_encode(_player.ds_craft_items)
	_map[?"quests_completed"] = json_encode(_player.ds_quests_completed)
	_map[?"last_date_time"] = date_datetime_string(date_current_datetime())
	var _json = json_encode(_map)		
	
	ds_map_destroy(_map)

	//FirebaseFirestore("Users").Child(string(FirebaseAuthentication_GetUID())).Set(_json)
	//instance_create_layer(x,y,"Instances",o_transition, new constructor_transition(s_trans_sq,rm_game))

}
function firebase_load(_value){
	var _json = json_parse(_value)
	var _player =  o_player_controller;

	//single value
	_player.coins = real(_json.coins);
	_player.coins_per_second = real(_json.coins_per_second);
	_player.total_coins = real(_json.total_coins);	
	//_player.last_date_time = _json.last_date_time

	//maps
	json_add_to_ds_map(_json.foods,o_player_controller.ds_foods)
	json_add_to_ds_map(_json.tracker,o_player_controller.ds_tracker)
	json_add_to_ds_map(_json.quests,o_player_controller.ds_quests)
	json_add_to_ds_map(_json.upgrades,o_player_controller.ds_upgrades)
	json_add_to_ds_map(_json.craft_items,o_player_controller.ds_craft_items)
	json_add_to_ds_map(_json.secret_items,o_player_controller.ds_secret_items)
	json_add_to_ds_map(_json.quests_completed,o_player_controller.ds_quests_completed)
	instance_create_layer(x,y,"Instances",o_transition, new constructor_transition(s_trans_sq,rm_game))
}

function firebase_read(){	
	FirebaseFirestore("Users").Child(string(FirebaseAuthentication_GetUID())).Read()
}

function firebase_update(){
	var _map = ds_map_create()
	var _player = o_player_controller
	_map[?"total_coins"] = _player.total_coins
	_map[?"coins"] = _player.coins
	_map[?"coins_per_second"] = _player.coins_per_second
	_map[?"foods"] = json_encode(_player.ds_foods)
	_map[?"upgrades"] = json_encode(_player.ds_upgrades)
	_map[?"quests"] = json_encode(_player.ds_quests)
	_map[?"tracker"] = json_encode(_player.ds_tracker)
	_map[?"secret_items"] = json_encode(_player.ds_secret_items)
	_map[?"craft_items"] = json_encode(_player.ds_craft_items)
	_map[?"quests_completed"] = json_encode(_player.ds_quests_completed)
	_map[?"last_date_time"] = date_datetime_string(date_current_datetime())
	var _json = json_encode(_map)		
	ds_map_destroy(_map)

	FirebaseFirestore("Users").Child(string(FirebaseAuthentication_GetUID())).Update(_json)
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Firebase_Create(){
	
	var _coins_items = json_stringify(global.coin_items);
	var _coins = global.coins;
	var _coins_per_second = global.coins_per_second;
	
	var _player_stats ={
		coins_items : _coins_items,
		coins : _coins,
		coins_per_second : _coins_per_second,
	}
	var _json = json_stringify(_player_stats);
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Set(_json)
}
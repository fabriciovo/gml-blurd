// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Firebase_Update(){
var _map = ds_map_create()
_map[?"coins"] = global.coins;
_map[?"coins_per_second"] = global.coins_per_second;
show_message(global.level_items)
show_message(json_encode(global.level_items))
show_message(json_stringify(global.level_items))
_map[?"level_items"] = json_encode(global.level_items)

var json = json_encode(_map)
ds_map_destroy(_map)

FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Update(json);
}
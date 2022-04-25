/// @description Insert description here
// You can write your code in this editor

if(room == rm_game){
var map = ds_map_create()
map[?"coins"] = global.coins 
map[?"coins_per_second"] = global.coins_per_second
var json = json_encode(map)
ds_map_destroy(map)

FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Update(json);

alarm[0] = 500;

}

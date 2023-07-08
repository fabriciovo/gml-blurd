// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_food(_food){
	var ds_map = o_player_controller.ds_foods
	ds_map_add(ds_map, _food.key, _food);
}
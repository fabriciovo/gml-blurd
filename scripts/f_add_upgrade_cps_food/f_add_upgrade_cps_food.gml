// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_add_upgrade_cps_food(_key){
	var _player_upgrades = o_player_controll.ds_upgrades
	var _new_key = "upgrade_" + key
	ds_map_add(_player_upgrades,_new_key, { key:_new_key, name:_name,type:"Food Upgrade" });
	
	instance_create_layer(global.VW / 2,50,"Instances", o_pop_up, new pop_up(_name, _sprite, "Food Upgraded!"))

}
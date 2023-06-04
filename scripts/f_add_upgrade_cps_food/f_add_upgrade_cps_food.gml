// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_add_upgrade_cps_food(_item){
	var _player_upgrades = o_player_controll.ds_upgrades
	
	ds_map_add(_player_upgrades,"upgrade_" + _item.key, new constructor_upgrade_food_cps(_item.name,_item.key, s_apple_pickup ,"Upgrade Food", _item.price * 2));
	
	instance_create_layer(global.VW / 2,50,"Instances", o_pop_up, new pop_up(_name, _sprite, "Food Upgraded!"))

}
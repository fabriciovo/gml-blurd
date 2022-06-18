// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_upgrade(){
	var _h = random_range(1,220);
	instance_create_layer(x,_h,"Instances",o_drink);
}
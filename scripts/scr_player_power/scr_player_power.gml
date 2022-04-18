// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_power(){
	if(object_exists(obj_player) && obj_power.active && obj_player_stats.energy > 0) {
		instance_create_layer(obj_player.x,obj_player.y,"Effects", obj_player_stats.selected_player._power);
		obj_power.active = false;
		obj_power.alarm[0] = 120;
		obj_player_stats.energy -= 1;
	}
}
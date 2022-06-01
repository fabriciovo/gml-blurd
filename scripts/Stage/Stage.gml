// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Stage(name,background, platform , enviroment) constructor {
	
	_name = name;
	_background = background;
	_platform = platform;
	_enviroment = enviroment;
	_lay_id = layer_get_id("Background");
	_back_id = layer_background_get_id(_lay_id);
	
	
	static create_method = function() {

		layer_background_sprite(_back_id, _background);
		instance_create_layer(0,0,"Enviroment",o_grassland_enviroment);
		
		instance_create_layer(0,224,"Enviroment",o_floor);
		instance_create_layer(180,224,"Enviroment",o_floor);
	 }
	
	 static step_method = function() {
		layer_hspeed(_lay_id, global.game_speed);
	 }
}
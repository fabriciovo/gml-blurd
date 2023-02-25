// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Powerup() constructor{

	step_method = function(){
		x -= global.one_second * 0.05
	}
	
	player_collision_method = function(){
		show_message("METHOD_NOT_IMPLEMENTED!")
	}
}

function Energy_Drink() : Powerup() constructor {
	sprite_index = s_solid
	player_collision_method = function(){
		global.one_second = global.one_second * 2
		instance_destroy()
	
	}

}


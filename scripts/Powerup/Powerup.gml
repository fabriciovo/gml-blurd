// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Powerup() constructor{
	depth = 0
	step_method = function(){
		x += global.game_speed
	}
	
	player_collision_method = function(){
		show_message("METHOD_NOT_IMPLEMENTED!")
	}
}

function Speed_Drink() : Powerup() constructor {
	sprite_index = s_solid
	player_collision_method = function(){
		o_powerup_controll.powerup_states.speed_drink.activate = true;
		instance_destroy()
	}

}


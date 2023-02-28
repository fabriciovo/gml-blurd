// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Powerup() constructor{

	step_method = function(){
		x -= global.game_speed * 0.05
	}
	
	player_collision_method = function(){
		show_message("METHOD_NOT_IMPLEMENTED!")
	}
}

function Energy_Drink() : Powerup() constructor {
	sprite_index = s_solid
	player_collision_method = function(){
		o_upgrade.upgrade_states_.speed_drink.activate = true;
	
	}

}


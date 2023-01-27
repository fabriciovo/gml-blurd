// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Monster() constructor {

	
	create_method = function(){
		grav = 0.3
		vsp = 0
		jump = -7
		grounded = false
		
	}
	step_method = function(){
		Apply_Gravity()
	}
	destroy_method = function(){
	
	}
	event_method = function(){
	
	}
	player_collision = function(){
		instance_destroy()
	}

}

function SpikeHead() : Monster() constructor {
	//sprite_index = s_spike_head
	
	create_method = function(){
	
	}

	event_method = function(){
	
	}
	
	alarm_method = function(){
	
	}
}
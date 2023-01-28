// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Monster() constructor {

	grav = 0.3
	vsp = 0
	jump = -7
	grounded = false
	
	create_method = function(){

		
	}
	step_method = function(){
		Apply_Gravity()
		hspeed = -3
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
	sprite_index = s_spike_head
	
	create_method = function(){
	
	}

	event_method = function(){
	
	}
	
	alarm_method = function(){
	
	}
}
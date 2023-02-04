function Monster() constructor {
	image_speed = 0
	grav = 0
	vsp = 0
	jump = 0
	grounded = false
	hsp = -3
	create_method = function(){
		show_error("METHOD NOT IMPLEMENTED",true)
	}
	step_method = function(){
		Apply_Gravity()
		x += hsp
	}
	end_step_method = function(){
		if(x <= -sprite_width){
			instance_destroy();
		}
	}
	destroy_method = function(){
		instance_create_layer(x,y,"Instances",o_particle, new Particles(s_effect_placeholder))
	}
	event_method = function(){
		show_error("METHOD NOT IMPLEMENTED",true)
	}
	
	alarm_method = function(){
		show_error("METHOD NOT IMPLEMENTED",true)
	}
	
	player_collision = function(){
		instance_destroy()
	}

}
function SpikeHead() : Monster() constructor {
	sprite_index = s_spike_head
	image_speed = 0
	create_method = function(){
		grav = 0.3
		jump = -10
		image_index = 0
		alarm[0] = random(2) * (global.one_second / 2)
	}
	
	alarm_method = function(){
		vsp = jump
	}
	
	event_method = function(){
		if grounded {
			image_index = 0
		}else{ 
			image_index = 1	
		}
	}
}
function Snail() : Monster() constructor {
	sprite_index = s_snail
	create_method = function(){
		hp = 3
		grav = 0.3
		jump = 0
		shield = false
		image_index = 0
		alarm[0] = random(2) * (global.one_second / 2)
	}
	
	alarm_method = function(){
		shield = true
	}
	
	player_collision = function() {
		if shield {
			hp -= 1
			hsp += random_range(3,9)
			vsp = random_range(-3,-9)
		}else{
			instance_destroy()
		}
	}
	
	event_method = function(){
		if !shield {
			image_index = 0
		}else{ 
			image_index = 1	
		}
		
		if grounded {
			hsp = -3
		}
		
		
		if hp <= 0 {
			instance_destroy()
		}
	}
}
function Brog() : Monster() constructor {
	sprite_index = s_spike_head
	image_speed = 0
	create_method = function(){
		grav = 0.3
		jump = -10
		image_index = 0
		alarm[0] = random(2) * (global.one_second / 2)
	}
	
	alarm_method = function(){
		vsp = jump
	}
	
	event_method = function(){
		if grounded {
			image_index = 0
		}else{ 
			image_index = 1	
		}
	}
}



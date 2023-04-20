function constructor_monster() constructor {	
	level = -1
	drop = []
	grav = 0
	vsp = 0
	jump = 0
	hsp = global.game_speed
	grounded = false
	track_key = ""
	level = 0
	image_speed = 0
	
	create_method = function(){
		show_error("METHOD NOT IMPLEMENTED",true)
	}
	step_method = function(){
		apply_gravity()
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
		var _monster = o_player_controll.ds_upgrades[? track_key]
		_monster.value++
		
		if level > 3 {
			var _drop_size = array_length(drop);
			var _drop_index = random_range(0, _drop_size);
			instance_create_layer(x,y,"Instances",o_pickup,new drop[_drop_index]())
		}
		
		instance_destroy()
	}

}
function constructor_monster_spike_head() : constructor_monster() constructor {
	sprite_index = s_spike_head
	image_speed = 0
	
	

	track_key = "spike_head"
	level = o_player_controll.ds_upgrades[? track_key].level
	
	create_method = function(){
		grav = 0.1
		jump = -6
		jump = -6
		jump = -6
		image_index = 0
		alarm[0] = random(3) * (global.one_second / 2)
		
		
		if level > 3 {
			array_push(drop, constructor_pickup_spike);
		}
		if level > 5 {
			array_push(drop, constructor_pickup_spike);
		}

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
function constructor_monster_snail() : constructor_monster() constructor {
	sprite_index = s_snail
	

	track_key = "snail"
	level = o_player_controll.ds_upgrades[? track_key].level
	create_method = function(){
		hp = 3
		grav = 0.2
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
			hsp = random_range(1,3)
			vsp = random_range(-3,-6)
		}else{
			hp = 0
		}
	}
	
	event_method = function(){
		if !shield {
			image_index = 0
		}else{ 
			image_index = 1	
		}
		
		if grounded {
			hsp = global.game_speed 
		}
		
		if vsp < 0 {
			image_angle -= 33
		}else {
			image_angle = 0
		}
		
		if hp <= 0 {
			var _monster = variable_struct_get(o_player_controll.player.track.monsters,_track_key)
			_monster.value++
			//instance_create_layer(x,y,"Instances",o_pickup, new Apple())
			instance_destroy()
		}
	}
	
}
function constructor_monster_angry_bird(_level) : constructor_monster(_level) constructor {
	sprite_index = s_fly
	image_speed = 0
	hsp = global.game_speed
	track_key = "angry_bird"
	
	level = o_player_controll.ds_upgrades[? track_key].level
	
	create_method = function(){
		grav = 0.3
		jump = -7
		image_index = 0
		alarm[0] = (global.one_second / 6)
	}
	
	alarm_method = function(){
		vsp = jump
		alarm[0] = 45
	}
	
	event_method = function(){

	}
}




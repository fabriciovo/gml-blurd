// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hero() constructor {
	enum hero_sprite_state {
		walk,
		run,
		jump,
		attack
	}
	sprite_[hero_sprite_state.walk] = noone
	sprite_[hero_sprite_state.run] =  noone
	sprite_[hero_sprite_state.jump] =  noone
	sprite_[hero_sprite_state.attack] =  noone

	create_method = function(){
		grav = 0.3
		vsp = 0
		jump = -7
		grounded = false
		attack = false
		state = hero_sprite_state.walk
		attack_index = -1
	}
	
	step_method = function() {
		var _touch = device_mouse_check_button_pressed(0, mb_left)
		if(_touch) vsp = jump
		Apply_Gravity()
		
		if attack {
			image_speed = 0
			state = hero_sprite_state.attack
			image_index = attack_index
		
		}else if grounded {
			image_speed = .6
			state = hero_sprite_state.walk
		}else if !grounded {
			image_speed = .6
			state = hero_sprite_state.jump
		}
		
		for (var _i = 0; _i <= 3; _i++) {
			event_user(o_player_controll.player.upgrades[_i].number)
		}
		
		sprite_index = sprite_[state]
	}
	
	coin_collision_method = function() {
		o_player_controll.player.coins += other.coin_value 
		instance_destroy(other)
	} 

	alarm_attack_reset = function(){
		attack = false
	}

	monster_collision_method = function() {
		attack_index = choose(0,1,2,3)
		attack = true
		alarm[0] = global.one_second / 4;	
	} 
	
}

function Blurd() : Hero() constructor  {
	sprite_[hero_sprite_state.walk] = s_blurd_walk
	sprite_[hero_sprite_state.run] = s_blurd_run
	sprite_[hero_sprite_state.jump] = s_blurd_jump
	sprite_[hero_sprite_state.attack] = s_blurd_attack

}
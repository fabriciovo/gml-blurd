
function constrtuctor_hero() constructor {
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
		grav = 0.2
		vsp = 0
		jump = -4
		grounded = false
		attack = false
		state = hero_sprite_state.walk
		attack_index = -1
	}
	
	step_method = function() {
		var _touch = device_mouse_check_button_pressed(0, mb_left)
		var _space  = keyboard_check_pressed(vk_space)
		
		if(_touch || _space) vsp = jump {
			apply_gravity()
		}
		
		if attack {
			image_speed = 0
			state = hero_sprite_state.attack
			image_index = attack_index
		
		}else if grounded {
			image_speed = .1
			state = hero_sprite_state.walk
		}else if !grounded {
			image_speed = .1
			state = hero_sprite_state.jump
		}
		
		//for (var _i = 0; _i <= 3; _i++) {
		//	event_user(o_player_controll.player.upgrades[_i].number)
		//}
		
		sprite_index = sprite_[state]
	}
	
	coin_collision_method = function() {
		o_player_controll.coins += other.coin_value 
		o_player_controll.total_coins += other.coin_value 
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

function constrtuctor_hero_blurd() : constrtuctor_hero() constructor  {
	image_xscale = 1.3
	image_yscale = 1.3
	sprite_[hero_sprite_state.walk] = s_blurd_walk
	sprite_[hero_sprite_state.run] = s_blurd_run
	sprite_[hero_sprite_state.jump] = s_blurd_jump
	sprite_[hero_sprite_state.attack] = s_blurd_attack

}
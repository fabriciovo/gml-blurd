// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hero(_x, _y, _grav, _jump,_action, _sprite_normal, _sprite_attack) constructor {
	x = _x;
	y = _y;
	image_speed = .1;
	sprite_index = _sprite_normal;
	grav_ =_grav;
	jump_ = _jump;
	action_ = _action;


	vsp_ = 0;
	grounded_ = false;

	static gravity_method = function (_solid) {
		vsp_ += grav_;
		if(place_meeting(x,y+vsp_,_solid)){
		while(!place_meeting(x,y+ sign(vsp_), _solid )){
			y = y + sign(vsp_);
		}
			grounded_ = true;
			vsp_ = 0;
		}else{
			grounded_ = false;
		}
		if(place_meeting(x,y+vsp_,_solid)){
			vsp_ = 0;
		}
		y += vsp_;
	}
	
	step_method = function(){
		x += 10 * dcos(vsp_);
		y -= 10 * dsin(vsp_);
		vsp_+= 2
	}
	
	coin_collision = function() {
		audio_play_sound(snd_coin,5,false);
		global.coins += 1;	
	}
	
	
	monster_collision = function() {
	if(other.hp_ <= 0) exit;
		sprite_index = _sprite_attack
		alarm[0] = global.one_second / 4;
	}
	
	alarm0_method = function() {
		sprite_index = _sprite_normal;

	}
}
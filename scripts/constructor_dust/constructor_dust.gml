// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_dust() constructor {
	image_speed = random_range(1/4,1/8);
	image_index = random(5);

	v_y = random_range(-0.2,0.2);

	image_xscale = choose(1.5,-1.5);
	image_yscale = choose(1.5,-1.5);
	sprite_index = choose(s_dust_A,s_dust_B);
	
	
	event_animation_end = function(){
		instance_destroy();
	}
	
	event_step = function(){
		x += global.game_speed;
		y += v_y;

		v_y *= 0.9;
	}
	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Pickup() constructor {
	grav = .25;
	vsp = -4
	hsp = random_range(.25,3)
	can_pickup = false;

	step_method = function(){
		Apply_Gravity()
		
		
		if hsp <= 0 {
			hsp = 0
		}else {
			hsp -= .1;
			x+=hsp
		}
	}
	
}

function Apple() : Pickup() constructor {
	sprite_index = s_item
	
	left_button_method = function() {
		o_player_controll.player.coins += 10
		o_player_controll.player.total_coins += 10
		instance_destroy()
	}
}
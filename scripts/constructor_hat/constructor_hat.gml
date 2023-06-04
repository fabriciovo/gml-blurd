// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_hat(_name, _type, _sprite) constructor {
	name = _name
	type = _type 
	sprite_index = _sprite
	depth = 1
	
	
	end_step_method = function() {
		x=lerp(x,o_player.x-12,.3)
		y=lerp(y,o_player.y-34,.3)
	}
}
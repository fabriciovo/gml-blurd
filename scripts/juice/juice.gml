// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function juice() {
	
	x_scale = 1;
	y_scale = 1;
	
	x_scale_target = 1;
	y_scale_target = 1;
	
	scaling_speed = .1;
		
	step_method = function(){
		x_scale = lerp(x_scale, x_scale_target, scaling_speed);
		y_scale = lerp(y_scale, y_scale_target, scaling_speed);
		
	}
	
	draw_method = function(_x,_y){
		draw_sprite_ext(sprite_index, image_index,_x,_y,
		image_xscale * x_scale,
		image_yscale * y_scale, image_angle,image_blend,image_alpha);
	}
	 
	apply_scaling_method = function(_x_scale, _y_scale,_x_scale_target, _y_scale_target) {
		x_scale = _x_scale;
		y_scale = _y_scale;
	
		x_scale_target = _x_scale_target;
		y_scale_target = _y_scale_target;
	}
}
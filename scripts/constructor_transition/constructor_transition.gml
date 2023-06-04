// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_transition(_sprite, _target_room) constructor {
	enum ENUM_TRANSITION {
		OUT,
		IN
	}
	state = ENUM_TRANSITION.OUT
	sprite = _sprite
	sprite_w = sprite_get_width(sprite)
	sprite_h = sprite_get_height(sprite)

	x_max = room_width div sprite_w
	y_max = room_height div sprite_h
	i_max = sprite_get_number(sprite)
	target_room = _target_room
	sub_image_index_inc = sprite_get_speed(sprite) / room_speed
	sub_image_index = 0
	
	color = c_black
	
	event_step = function(){
		switch (state) {
			case ENUM_TRANSITION.OUT:
				if sub_image_index < i_max + x_max {
					sub_image_index += sub_image_index_inc
				}else {
					state = ENUM_TRANSITION.IN
					room_goto(target_room)
				}
			break
			case ENUM_TRANSITION.IN:
			if sub_image_index > 0 {
				sub_image_index -= sub_image_index_inc
			}else {
				instance_destroy()
			}
			break
		}

	}
	
	event_draw_gui = function(){
		for (var _yy = 0; _yy <= y_max; ++_yy){
			for (var _xx = 0; _xx <= x_max; ++_xx){
				draw_sprite_ext(sprite, min(max(0,sub_image_index - _xx), i_max - 1), _xx * sprite_w, _yy * sprite_h, 1, 1,0, color, 1)

			}
		}
	}
}

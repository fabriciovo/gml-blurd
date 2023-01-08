/// @description Insert description here
// You can write your code in this editor
vsp_ += grav_

var _touch = device_mouse_check_button_pressed(0, mb_left)

if(_touch){
	vsp_ = jump_
}

if(place_meeting(x,y+vsp_,o_solid)){
	
	while(!place_meeting(x,y+ sign(vsp_), o_solid )){
		y = y + sign(vsp_);
	}
	grounded_ = true
	vsp_ = 0
}else{
grounded_ = false
}


if(place_meeting(x,y+vsp_,o_solid)){
	vsp_ = 0;
}

y += vsp_


/// @description Insert description here
// You can write your code in this editor
vsp += grav

var _touch = device_mouse_check_button_pressed(0, mb_left)

if(_touch){
	vsp = jump
}

if(place_meeting(x,y+vsp,o_solid)){
	
	while(!place_meeting(x,y+ sign(vsp), o_solid )){
		y = y + sign(vsp);
	}
	grounded = true
	vsp = 0
}else{
grounded = false
}


if(place_meeting(x,y+vsp,o_solid)){
	vsp = 0;
}

y += vsp


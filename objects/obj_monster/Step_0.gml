/// @description Insert description here
// You can write your code in this editor

vsp += grav;

if(place_meeting(x,y+vsp,obj_floor)){
	
	while(!place_meeting(x,y+ sign(vsp), obj_floor )){
		y = y + sign(vsp);
	}
	grounded = true;
	vsp = 0;
}else{
grounded = false;
}



y += vsp;

if(x <= -sprite_width){
	instance_destroy();
}

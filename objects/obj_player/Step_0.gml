event_user(_state);
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


if(place_meeting(x,y+vsp,obj_solid)){
	vsp = 0;
}



y += vsp;


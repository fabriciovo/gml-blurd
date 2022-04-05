event_user(_state);


//Keys
touch = device_mouse_check_button(0, mb_left);
touchPressed = device_mouse_check_button_pressed(0, mb_left);

vsp += grav;

if (touchPressed && action != undefined){
    action();
}

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


if(obj_player_stats.hp <= 0){
	with(_power){
		instance_destroy()
	}
	instance_change(death_object,true);
}



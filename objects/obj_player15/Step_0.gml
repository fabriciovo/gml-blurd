//Keys
touch = device_mouse_check_button_pressed(0, mb_left);

vsp += grav;

if (touch){
    vsp = -jump;
    audio_play_sound(snd_jump,9,false);
    image_index = 0;
    instance_create(x,y,obj_jump_effect);
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

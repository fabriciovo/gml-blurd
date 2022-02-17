//Keys
touch = device_mouse_check_button_pressed(0, mb_left);


//player
y += vsp;
if (touch){
    vsp = -jump;
    audio_play_sound(snd_jump,9,false);
    image_index = 0;
    instance_create(x,y,obj_jump_effect);
}
vsp += grav;



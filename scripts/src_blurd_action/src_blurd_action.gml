// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_blurd_action(){
    vsp = -jump;
    audio_play_sound(snd_jump,9,false);
    image_index = 0;
    instance_create(x,y,obj_jump_effect);
}
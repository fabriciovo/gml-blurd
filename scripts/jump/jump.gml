// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Jump(){
    vsp_ = -jump_;
    audio_play_sound(snd_jump,9,false);
    image_index = 0;
    instance_create_layer(x,y,"Effects",o_jump_effect);
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_damage(){

if(!hit){
audio_play_sound(snd_hurt, 8,false);
obj_player_stats.hp -= 1;
hit = true;
flash_alpha = 1;
_state = player_state.damage;
alarm[0] = 30;
}
}

if(!hit){
audio_play_sound(snd_hurt, 8,false);
hp -= 1;
hit = true;
flash_alpha = 1;
_state = player_state.damage;
alarm[0] = 30;
}


if(hp <= 0){
instance_change(death_object,true);
}



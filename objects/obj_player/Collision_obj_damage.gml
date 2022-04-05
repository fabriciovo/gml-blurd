
if(!hit){
audio_play_sound(snd_hurt, 8,false);
obj_player_stats.hp -= 1;
hit = true;
flash_alpha = 1;
_state = player_state.damage;
alarm[0] = 30;
}


if(obj_player_stats.hp <= 0){
	with(_power){
		instance_destroy()
	}
	instance_change(death_object,true);
}



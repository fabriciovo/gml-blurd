audio_play_sound(snd_coin,5,false);
obj_player_stats.gameScore += 1;
repeat (4) {
instance_create(bbox_left+random(sprite_width-24), bbox_top+random(sprite_height), obj_coin_effect);
 }


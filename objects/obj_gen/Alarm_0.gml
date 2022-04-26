/// @description Monsters
if(room == rm_game){
	script_execute(scr_spawn_enemy_spike_head,0,0,0,0,0);
	script_execute(scr_spawn_enemy_rolling,0,0,0,0,0);
	alarm[0] = random_range(120,320);
}


/// @description Variaveis

enum player_state {
	normal = 0,
	damage = 1,
}
flash_alpha = 0;
flash_color = c_white;
grav =0.1;
vsp = 0;
jump = 3;
grounded = false;
image_speed = .1; 
action = undefined
death_object = obj_player_death;
hit = false;
_state = player_state.normal;
_power = undefined;

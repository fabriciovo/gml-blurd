/// @description Damage State


if(invincible && jump){
vsp -= 2;
hsp = 1;
hp -= 1;
alarm[0] = global.one_second * 0.65;
jump = false;
}



if(grounded){

	if(hp <= 0){
		instance_destroy()
	}
	state = state_type.normal
}

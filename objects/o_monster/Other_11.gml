/// @description Damage State


if(invincible_ && jump_){
vsp_ -= 2;
hsp_= 1;
hp_ -= 1;
alarm[0] = global.one_second * 0.65;
jump_ = false;
}





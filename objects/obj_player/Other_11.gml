/// @description Damage State

if(flash_alpha > 0){
	flash_alpha -= 0.05;
	
}

if(flash_alpha <= 0){
	flash_alpha = 0;
	_state = player_state.normal;
}

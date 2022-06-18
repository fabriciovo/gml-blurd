/// @description Insert description here
// You can write your code in this editor
if(upgrade_states_.speed_drink.reset_speed) {

	global.game_speed += 0.01;
	if(global.game_speed == -1){
		upgrade_states_.speed_drink.reset_speed = false;
	}
}

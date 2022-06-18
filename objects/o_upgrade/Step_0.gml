/// @description Insert description here
// You can write your code in this editor


if(upgrade_states_.speed_drink.activate) {
	global.game_speed = -3;
	alarm[0] += 200
	upgrade_states_.speed_drink.activate = false;
	upgrade_states_.speed_drink.reset_speed = false;
}

if(upgrade_states_.speed_coins.activate) {

}

if(upgrade_states_.attract_coins.activate) {

}
/// @description Coins delay

global.coins += global.coins_per_second;
alarm[2] = coins_delay_ * global.one_second;

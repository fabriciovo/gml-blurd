// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Upgrade() constructor {
	name_ = "Speed Drink";
	cost_ = 50;
	sprite_ = s_bottled_drinks;
	index_ = 0;
	level_ = 0;
	key_ = "Speed Drink"
	disable_ = true;
	instantiate_ = false;
	speed_time_ = 120;
	base_cost_ = 50;
}



function Speed_Drink(): Upgrade() constructor {
	name_ = "Speed Drink";
	cost_ = 50;
	sprite_ = s_bottled_drinks;
	index_ = 0;
	level_ = 0;
	key_ = "speed_drink"
	disable_ = true;
	instantiate_ = false;
	speed_time_ = 120;
	base_cost_ = 50;
}

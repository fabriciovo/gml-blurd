// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Upgrade() constructor {
	name_ = "";
	cost_ = 0;
	coins_per_second_ = 0;
	sprite_ = noone;
	index_  = 0;
	key_ = "";
	disable_ = true;
	instantiate_ = false;
	static create_method = function(){
		
	}
}



function Speed_Drink(): Upgrade() constructor {
	name_ = "Speed Drink";
	cost_ = 50;
	coins_per_second_ = 3;
	sprite_ = s_bottled_drinks;
	index_ = 0;
	level_ = 0;
	key_ = "Speed Drink"
	disable_ = true;
	instantiate_ = false;
	speed_time_ = 120;
	static create_method = function(){
		hspeed = global.game_speed;
	}
	
	static collision_method = function(){
		global.game_speed = -2;
	}
	
	static start_alarm0 = function() {
		global.game_speed = -1;
	}
	
	static alarm0 = function(){
		alarm[0] = speed_time_;
	
	}
}

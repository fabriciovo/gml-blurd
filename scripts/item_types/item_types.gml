
function Cake(): Item() constructor {
	name_ = "Cake";
	cost_ = 10;
	coins_per_second_ = 1;
	sprite_ = s_cake;
	index_ = 0;
	level_ = 1;
	key_ = "cake"
}


function Bottled_Drinks(): Item() constructor {
	name_ = "Bottled Drinks";
	cost_ = 50;
	coins_per_second_ = 3;
	sprite_ = s_bottled_drinks;
	index_ = 0;
	level_ = 1;
	key_ = "bottled_drinks"
}

function Burger(): Item() constructor {
	name_ = "Burger";
	cost_ = 100;
	coins_per_second_ = 6;
	sprite_ = s_energy;
	index_ = 0;
	level_ = 1;
}

function Chocolate(): Item() constructor {
	name_ = "Chocolate";
	cost_ = 200;
	coins_per_second_ = 12;
	sprite_ = s_energy;
	index_ = 0;
	level_ = 1;
}

function Ice_Cream(): Item() constructor {
	name_ = "Ice_Cream";
	cost_ = 300;
	coins_per_second_ = 24;
	sprite_ = s_energy;
	index_ = 0;
	level_ = 1;
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

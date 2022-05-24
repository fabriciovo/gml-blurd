
function Item() constructor {
	name_ = "";
	cost_ = 0;
	coins_per_second_ = 0;
	sprite_ = noone;
	index_  = 0;
	key_ = "";
}


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

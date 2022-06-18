// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function Coins() constructor {
	coins_ = 0;
	coins_delay_ = global.one_second;
	coins_per_second_ = 0;
	coins_out_game_ = 0;
	alarm[0] = coins_delay_;
	
	initialize = function(_coins, _coins_delay = global.one_second, _coins_per_second, _coins_out_game){
		coins_ = _coins;
		coins_delay_ = _coins_delay;
		coins_per_second_ = _coins_per_second;
		coins_out_game_ = _coins_out_game;
	}
	
	alarm0_method = function(){
		coins_ += coins_per_second_;
	}
	
}
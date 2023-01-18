// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_Item(_name, _type, _price, _coins_per_second, _level, _spr) constructor {
		name_ = _name
		type_ = _type
		price_ = _price
		coins_per_second_ = _coins_per_second
		level_ = _level
		spr_ = _spr
		image_xscale = 12
		image_yscale =4
		depth = -100
	
	buy_method = function(){
		if(o_player_controll.player.coins < price_) exit
		o_player_controll.player.coins -= price_
		o_player_controll.player.coins_per_second += coins_per_second_
		level_++
		coins_per_second_ += coins_per_second_
		price_ = price_ * level_
	}
	
	draw_method = function(){
		draw_self()
		draw_text(x, y, name_)
		draw_text(x, y, price_)
		draw_text(x, y, level_)
		draw_text(x, y, coins_per_second_)
		draw_sprite(spr_,level_,x,y)
	}
	
}
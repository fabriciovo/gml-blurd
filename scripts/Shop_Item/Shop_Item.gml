// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_Item(_name, _type, _price, _coins_per_second, _level, _spr) constructor {
		name_ = _name
		type_ = _type
		price_ = _price
		coins_per_second_ = _coins_per_second
		level_ = _level
		spr_ = _spr
		disabled_ = true
		image_xscale = 18
		image_yscale = 6

	step_method = function() {
		var _shop = layer_get_id("Shop")
		if(layer_get_visible(_shop)) disabled_ = false
		else disabled_ = true
	}

	buy_method = function(){
		if	(disabled_) exit
		if(o_player_controll.player.coins < price_) exit
		o_player_controll.player.coins -= price_
		o_player_controll.player.coins_per_second += coins_per_second_
		level_++
		coins_per_second_ += coins_per_second_
		price_ = price_ * level_
	}
	
	draw_method = function(){
		draw_self()
		draw_text(x-70, y-60,name_)
		draw_text(x+70, y-30,"$: " + string(price_))
		draw_text(x-120, y,"level: " + string(level_))
		draw_text(x+30, y,"CPS:" + string(coins_per_second_))
		draw_sprite(spr_,level_,x+150,y-49)
	}
	
}
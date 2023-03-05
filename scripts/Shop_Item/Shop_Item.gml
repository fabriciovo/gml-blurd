// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_Item(_item) constructor {
		name_ = _item.name
		type_ = _item.type
		price_ = _item.price
		coins_per_second_ = _item.coins_per_second
		level_ = _item.level
		disabled_ = true
		image_xscale = 18
		image_yscale = 4
		_shop_layer = layer_get_id("Shop")

	step_method = function() {
		if level_ == 0 exit
		if(layer_get_visible(_shop_layer)) disabled_ = false
		else disabled_ = true
	}

	buy_method = function(){
		if level_ == 0 exit
		if	(disabled_) exit
		if(o_player_controll.player.coins < price_) exit
		o_player_controll.player.coins -= price_
		o_player_controll.player.coins_per_second += coins_per_second_
		level_++
		coins_per_second_ += coins_per_second_
		price_ = price_ * level_
	}
	
	draw_method = function(){
		if level_ == 0 exit
		draw_self()
 		draw_sprite(s_shop_icon_placeholder, 0, x-120, y)
		draw_text_ext_transformed(x - 100, y - 30, "Lv." + string(level_),10, 300, .6,.6, image_angle)
		draw_text_ext_transformed(x - 100, y - 8, name_, 10, 300, .6,.6, image_angle)
		draw_text_ext_transformed(x + 4, y - 28 , "+"+string(coins_per_second_)+"\n\n\n cps", 10, 300, .6,.6, image_angle)
	}
	
}
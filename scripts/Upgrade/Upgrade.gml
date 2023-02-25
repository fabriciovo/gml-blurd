function Upgrade(_name, _type, _price, _level, _spr) constructor {
		name_ = _name
		type_ = _type
		price_ = _price
		level_ = _level
		spr_ = _spr
		disabled_ = true
		image_xscale = 18
		image_yscale = 4
		_shop_layer = layer_get_id("Shop")
		
	create_method = function(){
		price_ = price_ * level_
	}

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
		level_++
		price_ = price_ * level_
	}
	
	draw_method = function(){
		if level_ == 0 exit
		draw_self()
 		draw_sprite(s_shop_icon_placeholder, 0, x-120, y)
		draw_text_ext_transformed(x - 100, y - 30, "Lv." + string(level_),10, 300, .6,.6, image_angle)
		draw_text_ext_transformed(x - 100, y - 8, name_, 10, 300, .6,.6, image_angle)
	}
	
}
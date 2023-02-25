function on_click_open_shop(){
	var _shop = layer_get_id("Shop")
	
	var _value = layer_get_visible(_shop)
	layer_set_visible(o_shop.shop.open_panel, !_value)
	layer_set_visible(_shop, !_value)

}
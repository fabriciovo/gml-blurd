// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function on_click_open_shop(){
	var _shop = layer_get_id("Shop")
	var _value = layer_get_visible(_shop)
	layer_set_visible(_shop, !_value)
}
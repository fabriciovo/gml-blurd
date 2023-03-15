function on_click_open_shop(){
var _shop_layer = layer_get_id("Shop")
var _items_layer = layer_get_id("Items")	
var _upgrade_layer = layer_get_id("Upgrades")
var _value = layer_get_visible(_shop_layer)

if _value == false {
	var _sep = 4;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;
	var _temp_y = _y
	#region Create Item Shop

	var _list_items_size = array_length(o_player_controll.player.shop_items)
	for (var _i = 0; _i < _list_items_size; _i++) {
		var _item = o_player_controll.player.shop_items[_i]
		instance_create_layer(_x,_temp_y,_items_layer,o_shop_item, new Item_UI(_item,_i,_w,_h));

		_temp_y += (_h + _sep);
		
	}
	layer_set_visible(_items_layer, true)

	#endregion
	#region Create Upgrade Shop
	_temp_y = _y
	var _list_upgrades_size = array_length(o_player_controll.player.upgrades)
	for (var _i = 0; _i < _list_upgrades_size; _i++) {
	var _item = o_player_controll.player.upgrades[_i]
	instance_create_layer(_x,_temp_y,_upgrade_layer,o_shop_item, new Item_UI(_item,_i,_w,_h));

	_temp_y += (_h + _sep);
		
	}
	layer_set_visible(_upgrade_layer, false)
	#endregion
	
}else{
	instance_destroy(o_shop_item)
	
}
	
layer_set_visible(_shop_layer, !_value)

}

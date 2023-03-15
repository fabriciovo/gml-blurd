function on_click_open_shop(){
	
var _shop = layer_get_id("Shop")
var _value = layer_get_visible(_shop)

if _value == false {
	#region Create Shop
	var _margin = 10;
	var _sep = 4;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;

	var _list_size = array_length(o_player_controll.player.shop_items)
	for (var _i = 0; _i < _list_size; _i++) {
		var _item = o_player_controll.player.shop_items[_i]
		var _inst = instance_create_layer(_x,_y,_shop,o_shop_item, new Item_UI(_item,_w,_h));

		_y += (_h + _sep);
		
	}


	#endregion
}else{
	instance_destroy(o_shop_item)
	
}
	
layer_set_visible(_shop, !_value)

}

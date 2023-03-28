function create_itens_shop(){
	var _items_layer = layer_get_id("Items")	
	var _sep = 4;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;

	var _list_items_size = array_length(o_player_controll.player.shop_items)
	for (var _i = 0; _i < _list_items_size; _i++) {
		var _item = o_player_controll.player.shop_items[_i]
		instance_create_layer(_x,_y,_items_layer,o_shop_item, new Item_UI(_item,_i,_w,_h));

		_y += (_h + _sep);
		
	}
	
}

function create_upgrade_shop(){
	var _upgrade_layer = layer_get_id("Upgrades")
	var _sep = 6;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;
	var _list_upgrades_size = array_length(o_player_controll.player.upgrades)
	for (var _i = 0; _i < _list_upgrades_size; _i++) {
	var _item = o_player_controll.player.upgrades[_i]
	instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new Item_Upgrade_UI(_item,_i,_w,_h));

	_y += (_h + _sep);
		
	}


}

function on_click_open_shop(){
var _shop_layer = layer_get_id("Shop")


var _value = layer_get_visible(_shop_layer)

if _value == false {
	create_itens_shop()
	layer_set_visible("Items", true)
	instance_create_depth(80,220,-1,o_btn_item, new btn_tab("Items",create_itens_shop))
	instance_create_depth(170,220,-100,o_btn_item, new btn_tab("Upgrades",create_upgrade_shop))
}else{
	instance_destroy(o_shop_item)
	instance_destroy(o_btn_item)
}
	
layer_set_visible(_shop_layer, !_value)

}



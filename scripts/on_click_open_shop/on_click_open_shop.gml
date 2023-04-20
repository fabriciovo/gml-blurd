function create_items_shop(){
	var _items_layer = layer_get_id("Items")	
	var _sep = 4;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;

	var _list = o_player_controll.ds_shop_items
	var _list_items_key = ds_map_keys_to_array(_list)
	var _size = array_length(_list_items_key)
	for (var _i = 0; _i < _size; _i++) {
		var _key = _list_items_key[_i]
		instance_create_layer(_x,_y,_items_layer,o_shop_item, new constructor_shop_item(_key,_w,_h));

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
	
	var _list = o_player_controll.ds_upgrades
	var _list_items_key = ds_map_keys_to_array(_list)
	var _size = array_length(_list_items_key)
	for (var _i = 0; _i < _size; _i++) {
	var _key = _list_items_key[_i]
	instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new constructor_upgrade_item(_key,_w,_h));

	_y += (_h + _sep);
		
	}
}

function create_quest_panel(){
	var _upgrade_layer = layer_get_id("Quest")
	var _sep = 6;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;
	var _keys = variable_struct_get_names(global.struct_quests);
	for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
		var _key = _keys[_i];
		instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new constructor_quest_item(_key,_w,_h));
		_y += (_h + _sep);
	}
	
}

function create_craft_bag(){
		var _layer = layer_get_id("Craft_Bag")
		var _margin = 24;
		var _sep = 6;
		var _cell_size = 40;

		var _size_x = 6;


		var _inv_x = _margin + 21;
		var _inv_y = 118;

		var _x = 0;
		var _y = 0;
		
	for (var _i = 0; _i < 3; _i++ ){
		var _button_x = _inv_x + (_sep + _cell_size) * _x;
		var _button_y = _inv_y + (_sep + _cell_size) * _y;

		instance_create_layer(_button_x, _button_y, _layer, o_shop_item, new constructor_craft_bag_item(_i,40,40));
		
		_x++;
	
		if (_x == _size_x) {
			_x = 0;
			_y++;
		}
	}	
}

function create_secret_items(){
		var _layer = layer_get_id("Inventory")
		var _size = array_length(global.array_secret_items)
		var _margin = 24;
		var _sep = 32;
		var _cell_size = 60;

		var _size_x = 3;


		var _inv_x = _margin + 24;
		var _inv_y = 118;

		var _x = 0;
		var _y = 0;
		


	for (var _i = 0; _i < _size; _i++ ){
		var _x = _inv_x + (_sep + _cell_size) * _x;
		var _y = _inv_y + (_sep + _cell_size) * _y;

		instance_create_layer(_x, _y, _layer, o_shop_item, new constructor_secret_item(_i,80,80) );
		
		_x++;
	
		if (_x == _size_x) {
			_x = 0;
			_y++;
		}
	}	
}

function on_click_open_shop(){
var _shop_layer = layer_get_id("Shop")
var _value = layer_get_visible(_shop_layer)
var ds_shop_items_size = ds_map_size(o_player_controll.ds_shop_items)
var ds_upgrades_size = ds_map_size(o_player_controll.ds_upgrades)
var ds_quest_size = ds_map_size(o_player_controll.ds_quests)
var ds_craft_items_size = ds_list_find_value(o_player_controll.ds_craft_items,0).unlocked == true ? 1 : 0
var ds_secret_items_size = ds_list_find_value(o_player_controll.ds_secret_items,0).unlocked == true ? 1 : 0

if _value == false {
	create_items_shop()
	layer_set_visible("Items", true)
	instance_create_depth(70,global.VH - 150,0,o_btn_item, new btn_tab("Items", s_shop_icon_placeholder, create_items_shop,ds_shop_items_size))
	instance_create_depth(110,global.VH - 150,0,o_btn_item, new btn_tab("Upgrades", s_shop_icon_placeholder,create_upgrade_shop,ds_upgrades_size))
	instance_create_depth(150,global.VH - 150,0,o_btn_item, new btn_tab("Quest", s_shop_icon_placeholder, create_quest_panel,ds_quest_size))
	instance_create_depth(190,global.VH - 150,0,o_btn_item, new btn_tab("Craft_Bag", s_shop_icon_placeholder, create_craft_bag,ds_craft_items_size))
	instance_create_depth(230,global.VH - 150,0,o_btn_item, new btn_tab("Inventory", s_shop_icon_placeholder, create_secret_items,ds_secret_items_size))
}else{
	instance_destroy(o_shop_item)
	instance_destroy(o_btn_item)
}
	
layer_set_visible(_shop_layer, !_value)

}



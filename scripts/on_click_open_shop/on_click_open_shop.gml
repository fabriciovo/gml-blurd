function create_items_shop(){
	var _items_layer = layer_get_id("Foods")	
	var _sep = 4;

	var _x = 0;
	var _y = 120;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _y = _y + _sep;

	var _list = o_player_controll.ds_foods
	var _list_items_key = ds_map_keys_to_array(_list)
	var _size = array_length(_list_items_key)
	for (var _i = 0; _i < _size; _i++) {
		var _key = _list_items_key[_i]
		instance_create_layer(_x,_y,_items_layer,o_shop_item, new constructor_food_item(_key,_w,_h));
		_y += (_h + _sep);
	}
	
}

function create_upgrade_shop(){
	

	var spaceBetweenItem = 5 ;

	scr_scrollable_set_First_Item_Position(obj_scrollable , 0);
	
	var _upgrade_layer = layer_get_id("Upgrades")
	var _sep = 6;

	var _x = 0;
	var _y = 0;

	var _w = 256;
	var _h = 54;
	var _x = 54;
	
	var _list = o_player_controll.ds_upgrades
	var _list_items_key = ds_map_keys_to_array(_list)
	var _size = array_length(_list_items_key)

	for (var _i = 0; _i < _size; _i++) {
		var _key = _list_items_key[_i]
		if (_list[? _key].type == "Unlockable"){
			instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new constructor_upgrade_item_unlockable(_key,_w,_h));
		} else {
			instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new constructor_upgrade_item(_key,_w,_h));
		}	
		_y += (_h + _sep) + scr_scrollable_get_scroll_data(obj_scrollable);
	}
	
	scr_scrollable_set_Last_Item_Position(obj_scrollable , _y + (_h / 2) );
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
	
	var _quest_list = o_player_controll.ds_quests
	var _quest_completed_list = o_player_controll.ds_quests_completed

	var _list_quest_values = ds_map_values_to_array(_quest_list)
	var _list_quest_values_size = array_length(_list_quest_values)
	
	var _list_quest_completed_values = ds_map_values_to_array(_quest_completed_list)
	var _list_quest_completed_values_size = array_length(_list_quest_completed_values)

	for(var _i = 0; _i < _list_quest_values_size; _i++) {
		var _quest = _list_quest_values[_i];
		instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new constructor_quest_item(_quest,_w,_h));
		_y += (_h + _sep);
	}

	for(var _i = 0; _i < _list_quest_completed_values_size; _i++) {
		var _quest = _list_quest_completed_values[_i];
		instance_create_layer(_x,_y,_upgrade_layer,o_shop_item, new constructor_quest_complete_item(_quest.key,_w,_h));
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
		
	var _list = o_player_controll.ds_craft_items
	var _list_items_key = ds_map_keys_to_array(_list)
	var _size = array_length(_list_items_key)-1
	for (var _i = _size; _i >= 0; --_i) {
		var _button_x = _inv_x + (_sep + _cell_size) * _x;
		var _button_y = _inv_y + (_sep + _cell_size) * _y;
		var _key = _list_items_key[_i]
		instance_create_layer(_button_x, _button_y, _layer, o_shop_item, new constructor_craft_bag_item(_key,40,40));
		
		_x++;
	
		if (_x == _size_x) {
			_x = 0;
			_y++;
		}
	}	
}

function create_secret_items(){
		var _layer = layer_get_id("Inventory")
		var _size = array_length(global.struct_secret_items)
		var _margin = 24;
		var _sep = 32;
		var _cell_size = 60;

		var _size_x = 3;


		var _inv_x = _margin + 24;
		var _inv_y = 118;

		var _x = 0;
		var _y = 0;
		


	var _list = o_player_controll.ds_secret_items
	var _list_items_key = ds_map_keys_to_array(_list)
	var _size = array_length(_list_items_key)-1
	for (var _i = _size; _i >= 0; --_i) {
		var _button_x = _inv_x + (_sep + _cell_size) * _x;
		var _button_y = _inv_y + (_sep + _cell_size) * _y;
		var _key = _list_items_key[_i]
		instance_create_layer(_button_x, _button_y, _layer, o_shop_item, new constructor_secret_item(_key,80,80));
		
		_x++;
	
		if (_x == _size_x) {
			_x = 0;
			_y++;
		}
	}	
}

function on_click_open_shop(){
instance_create_layer(x,y,"Shop",obj_scrollable)
instance_create_layer(x,y,"Shop",obj_buttons)
var _shop_layer = layer_get_id("Shop")
var _value = layer_get_visible(_shop_layer)
var ds_foods_size = ds_map_size(o_player_controll.ds_foods)
var ds_upgrades_size = ds_map_size(o_player_controll.ds_upgrades)
var ds_craft_items_size = ds_map_size(o_player_controll.ds_craft_items)


if _value == false {
	create_items_shop()
	layer_set_visible("Foods", true)
	instance_create_depth(62,global.VH -  135,0,o_btn_item,  new btn_tab("Foods", s_food_btn, create_items_shop,ds_foods_size))
	instance_create_depth(110,global.VH - 135,0,o_btn_item, new btn_tab("Upgrades", s_upgrade_btn,create_upgrade_shop,ds_upgrades_size))
	instance_create_depth(146,global.VH - 135,0,o_btn_item, new btn_tab("Quest", s_quest_btn, create_quest_panel,1))
	instance_create_depth(192,global.VH - 135,0,o_btn_item, new btn_tab("Craft_Bag", s_craft_bag_btn, create_craft_bag,ds_craft_items_size))
	instance_create_depth(242,global.VH - 135,0,o_btn_item, new btn_tab("Inventory", s_secret_items_btn, create_secret_items,1))
	//instance_create_depth(286,global.VH - 135,0,o_btn_item, new btn_tab("Inventory", s_secret_items_btn, create_secret_items,1))
}else{
	instance_destroy(o_shop_item)
	instance_destroy(o_btn_item)
	instance_destroy(obj_scrollable)
}
	
layer_set_visible(_shop_layer, !_value)

}

function update_upgrade_shop(){
instance_destroy(o_shop_item)
create_upgrade_shop()
}

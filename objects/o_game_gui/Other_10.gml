/// @description Create Food Shop
var _margin = 10;
var _sep = 8;
var _w = 120 + (window_get_width() / 3);
var _h = 36 + (window_get_height() / 8);
var _x = window_get_width() -_w - _margin;
var _y = _sep;

var _title_h = 12;

var _arr = variable_struct_get_names(global.food_items) ;
var _size = array_length(_arr);

for (var _i = 0; _i < _size; _i++) {
	var _item = variable_struct_get(global.food_items, _arr[_i]);
	if is_string(_item)	{
		//create_button_title(_x,_y,_w,_title_h, o_button_title, _item);
		//_y += (_title_h + _sep);
	}else {
		create_shop_food(_x,_y,_w,_h, o_button_shop_item, _item);
		_y += (_h + _sep);
	}
}

c_menu_height = _y - window_get_height();

/// @description Shop

#region Create Shop
var _margin = 10;
var _sep = 4;
var _cell_size = 24;

var _size_x = 6;
var _size_y = 2;

var _inv_x = _margin;
var _inv_y = global.VH - (_margin + _sep + _cell_size * _size_y);

var _x = 0;
var _y = 0;

for (var _i = 0; _i < 3; _i++ ){
	var _button_x = _inv_x + (_sep + _cell_size) * _x;
	var _button_y = _inv_y + (_sep + _cell_size) * _y;

	var _button = instance_create_depth(_button_x, _button_y, 0, o_button_inventory);
	
	with _button {
		slot_id = _i;
		width = _cell_size;
		height = _cell_size;
	}
	
	_x++;
	
	if (_x == _size_x) {
		_x = 0;
		_y++;
	}
}







#endregion
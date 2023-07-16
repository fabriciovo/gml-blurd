function create_shop_food(_x,_y,_w,_h,_button_object,_item){
	var _inst = instance_create_depth(_x,_y,0,_button_object);
	with(_inst){
		width = _w;
		height = _h;
		item = _item
	}
	return _inst;
}
draw_set_color(hover ? c_gray : c_black);
draw_set_alpha(0.4);

draw_rectangle(x,y,x + width, y + height, 0);

draw_set_alpha(1);
draw_set_color(c_white);

draw_rectangle(x , y , x + width, y + height,1);

var _list = o_player_controll.player.shop_items;
var _arr = _list[| slot_id];

if is_array(_arr) {
	var _item = _arr[0];
	var _spr = global.item[_item].sprite;
	
	draw_sprite(_spr, 0, x + width / 2, y + height / 2);
	
	var _count = _arr[1];
	
	draw_set_font(fn_ui);
	draw_text(x + 2,y + 4, _count);
}
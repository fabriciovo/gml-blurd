/// @description Insert description here
// You can write your code in this editor
if level_ <= 0 exit;
draw_self();

if(global.coins >= cost_) {
	draw_sprite_ext(s_shop_container, 0, x / 2 - 1, y, 0.5, 0.5,0,c_green,1);
} else {
	draw_sprite_ext(s_shop_container, 0, x / 2 - 1, y, 0.5, 0.5,0,c_white,1);
}

draw_sprite(sprite_, index_,x / 2 - 12, y - 10);
draw_text( x / 2 + 14, y - 14,name_);
draw_text( x / 2 + 14, y ,"cost " + string(cost_));

/// @description Insert description here
// You can write your code in this editor

draw_self();
if(global.coins >= cost) {
	draw_sprite_ext(spr_shop_container, 0, x / 2 - 1, y, 0.5, 0.5,0,c_green,1);
} else {
	draw_sprite_ext(spr_shop_container, 0, x / 2 - 1, y, 0.5, 0.5,0,c_white,1);
}

draw_sprite(item_image, item_index,x / 2, y);
draw_text( x / 2 +14, y -12,item_name);
draw_text( x / 2 + 14, y,"cost " + string(cost));
draw_text( x / 2 + 45, y - 12,"CpS " + string(coins_per_second));

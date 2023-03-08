/// @description Insert description here
// You can write your code in this editor
if o_player_controll.player.total_coins > 1 && !global.shop_items.cake.equiped {
	global.shop_items.cake.equiped = true
	array_push(o_player_controll.player.shop_items, global.shop_items.cake)
}
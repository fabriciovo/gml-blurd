/// @description Insert description here
// You can write your code in this editor
if o_player_controll.player.total_coins > shop_items.cake.total_coins && !shop_items.cake.equiped {
	shop_items.cake.equiped = true
	array_push(o_player_controll.player.shop_items, shop_items.cake)
}
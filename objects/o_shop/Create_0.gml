/// @description Insert description here
// You can write your code in this editor

shop_items = JSON_read("shop_items.json")

for(var i = 0; i < 5; i++){
	instance_create_layer(x,y+100*i,"Shop",o_shop_item, new Shop_Item(shop_items[i].name, 0, shop_items[i].price,shop_items[i].coins_per_second,shop_items[i].level,asset_get_index(shop_items[i].sprite)))
}
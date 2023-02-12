// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop(){
	create_items = function(){
		for(var i = 0; i < 5; i++){
			instance_create_layer(x,y-175+i*65,"Shop",o_shop_item, 
			new Shop_Item(shop_items[i].name, 0, 
			shop_items[i].price,
			shop_items[i].coins_per_second,
			shop_items[i].level,
			asset_get_index(shop_items[i].sprite)))
		}
	}

	show_items = function(){
	
	}
	
}
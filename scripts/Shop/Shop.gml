// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop() constructor {
	
	shop_items = [
    {
        name:"item_1",
        price: 1,
        coins_per_second: 0.1,
        sprite: s_item
    },
    {
        name: "item_2",
        price: 1,
        coins_per_second: 0.1,
        sprite: s_item
    },
    {
        name: "item_3",
        price: 1,
        coins_per_second: 0.1,
        sprite: s_item
    },
    {
        name: "item_4",
        price: 1,
        coins_per_second: 0.1,
        sprite: s_item
    },
    {
        name: "item_5",
        price: 1,
        coins_per_second: 0.1,
        sprite: s_item
    }
]

upgrades_items = [
	{
	    name:"upgrades_0",
	    price: 1,
		number: 1,
	    sprite: s_item
	},
]

	
	create_method = function(_x, _y, _container, _player_controll){
		x = _x
		y = _y
		open_panel = "Items"
		title = ""
		//Items
		for(var i = 0; i < 5; i++){
			instance_create_layer(x,y-155+i*65,"Items",_container, 
			new Item(shop_items[i].name, 0, 
			shop_items[i].price, 
			shop_items[i].coins_per_second,
			_player_controll.player.shop_items[i].level,
			asset_get_index(shop_items[i].sprite)))
		}
		
		//Upgrades
		for(var i = 0; i < 1; i++){
			instance_create_layer(x,y-155+i*65,"Upgrades",_container, 
			new Upgrade(_player_controll.player.upgrades[i].name, 0, 
			_player_controll.player.upgrades[i].base_price, 
			_player_controll.player.upgrades[i].level,
			asset_get_index(shop_items[i].sprite)))
		}
	}
	
	draw_end_method = function(){
		draw_text(x,y,title)
	}
	

	show_items = function(){
	
	}
	
}
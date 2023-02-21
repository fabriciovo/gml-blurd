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
	{
	    name:"upgrades_1",
	    price: 1,
		number: 1,
	    sprite: s_item
	},

	{
	    name:"upgrades_2",
	    price: 1,
		number: 1,
	    sprite: s_item
	},
	{
	    name:"upgrades_3",
	    price: 1,
		number: 1,
	    sprite: s_item
	},
]

	
	create_method = function(_x, _y, _container, _player_controll){
		x = _x
		y = _y
		//Items
		for(var i = 0; i < 5; i++){
			instance_create_layer(x,y-155+i*65,"Shop",_container, 
			new Item(shop_items[i].name, 0, 
			shop_items[i].price, 
			shop_items[i].coins_per_second,
			_player_controll.player.shop_items[i].level,
			asset_get_index(shop_items[i].sprite)))
		}
		
		//Upgrades
		for(var i = 0; i <= 3; i++){
			instance_create_layer(x,y-155+i*65,"Shop",_container, 
			new Item(upgrades_items[i].name, 0, 
			upgrades_items[i].price, 
			upgrades_items[i].number,
			_player_controll.player.upgrades[i].level,
			asset_get_index(shop_items[i].sprite)))
		}
	}
	

	show_items = function(){
	
	}
	
}
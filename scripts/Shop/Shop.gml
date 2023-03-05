function Shop_Controll() constructor {

	create_method = function(_x, _y){
		x = _x
		y = _y
		open_panel = "Items"
		title = ""
		//Items
		for(var i = 0; i < global.shop_items_size; i++) {
			instance_create_layer(x,y-155+i*65,"Items",o_shop_item, 
			new Item(o_player_controll.player.shop_items[i]))
		}
		
		//Upgrades
		//for(var i = 0; i < global.upgrades_size; i++){
		//	instance_create_layer(x,y-155+i*65,"Upgrades",o_shop_item, 
		//	new Upgrade(o_powerup_controll.player.upgrades[i].name, 0, 
		//	o_powerup_controll.player.upgrades[i].base_price, 
		//	o_powerup_controll.player.upgrades[i].level,
		//	asset_get_index(shop_items[i].sprite)))
		//}
	}
	
	
	
	draw_end_method = function(){
		draw_text(x,y,title)
	}
	

	show_items = function(){
	
	}
	
}
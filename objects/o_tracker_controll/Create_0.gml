/// @description Insert description here
// You can write your code in this editor
shop_items = {
	cake: {
		name:"Cake",
		level:0,
		sprite_key: "s_item",
		price: 1,
		coins_per_second: 0.1,
		total_coins:1,
		equiped: false
	}
}


upgrade_items = {
	speed_drink: {
		name:"Speed Drink",
		level:0,
		sprite_key: "s_item",
		number:0,
		price: 10,
		type:"Power Up"
	}
}

var _keys = variable_struct_get_names(shop_items);
for (var _i = array_length(_keys)-1; _i >= 0; --_i) {
	var _k = _keys[_i];
	var _item = variable_struct_get(shop_items, _k);
	
	for(var _n = 0; _n < global.shop_items_size; _n++){
		if(o_player_controll.player.shop_items[_n].name == _item.name ){
			_item.equiped = true
		}
	
	}
	
}
	
	
	

/// @description Insert description here
// You can write your code in this editor

coin_items = ds_list_create();
ds_list_add(coin_items, new Cupcake());
ds_list_add(coin_items, new Bottled_Drinks());


var _size = ds_list_size(coin_items);
for(var i = 0; i < _size; i++){
	 var _item = coin_items[| i];
	 var _obj = instance_create_layer(x,y /2 +  i * 38 ,"Shop",o_shop_container);
	_obj.cost = _item.cost;
	_obj.coins_per_second = _item.coins_per_second;
	_obj.sprite = _item.sprite;	
	_obj.index = _item.index;	
	_obj.layer = layer_get_id("Shop");
	_obj.enabled = false;

}

layer_set_visible("Shop",false);



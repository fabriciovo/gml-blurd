/// @description Insert description here
// You can write your code in this editor
items = array_create(7,noone);
for(var i = 0; i < 7; i++){
	var obj = instance_create_layer(x,y /2 +  i * 32 ,"Shop",o_shop_container);
	with(obj){
		obj.cost = 1 + i * i;
		obj.coins_per_second = 1 + i * i;
		obj.depth = -10000;
		obj.visible = false;
		
		
	}
	items[i] = obj;
}
layer_set_visible("Shop",false);

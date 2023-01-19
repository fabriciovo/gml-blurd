/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < 5; i++){
	instance_create_layer(x,y+100*i,"Shop",o_shop_item, new Shop_Item("name", 0, 1,0.1,1,s_coin))
}
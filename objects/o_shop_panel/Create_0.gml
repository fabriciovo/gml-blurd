/// @description Insert description here
// You can write your code in this editor

coin_items_ = ds_list_create();
upgrade_items_ = ds_list_create();

ds_list_add(coin_items_, new Cake());
ds_list_add(coin_items_, new Bottled_Drinks());


ds_list_add(upgrade_items_, new Cake());

title_ = "Coins";
Shop(coin_items_,"Coins", o_shop_container,global.level_items);
Shop(upgrade_items_,"Upgrades", o_shop_container,global.level_items);

layer_set_visible("Shop",false);


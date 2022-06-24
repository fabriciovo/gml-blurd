/// @description Insert description here
// You can write your code in this editor

title_ = "Coins";
coin_shop_ = new Shop(x,y,"Coins", o_shop_container ,global.coin_items);
upgrade_shop_ = new Shop(x,y,"Upgrades", o_shop_container ,global.upgrade_items);
coin_shop_.create_shop()


layer_set_visible("Shop",false);


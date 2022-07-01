/// @description Insert description here
// You can write your code in this editor

title_ = "Coins";
coin_shop_ = new Shop(x,y,"Coins", o_shop_container ,global.coin_items);
coin_shop_.create_shop()
upgrade_shop_ = new Shop_Upgrade(x,y,"Upgrades", o_shop_container_upgrade ,global.upgrade_items);
upgrade_shop_.create_shop()

layer_set_visible("Shop",false);


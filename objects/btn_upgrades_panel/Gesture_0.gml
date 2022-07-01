/// @description Set visible layer
layer_set_visible("Coins",false);
layer_set_visible("Upgrades",true);
layer_set_visible("Map_Upgrades",false);
layer_set_visible("Characters",false);
layer_set_visible("Options",false);

with(o_shop_container){
	disable_ = true;
}

with(o_shop_container_upgrade){
	disable_ = false;
}

o_shop_panel.title_ = "Upgrades";

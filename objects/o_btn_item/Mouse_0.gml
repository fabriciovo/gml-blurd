if !layer_get_visible("Shop") exit
instance_destroy(o_shop_item)
layer_set_visible(o_shop.open_panel, false)
layer_set_visible(layer_name, true)
o_shop.open_panel = layer_name
create_shop_func()
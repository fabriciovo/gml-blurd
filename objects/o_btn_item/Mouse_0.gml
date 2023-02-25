if !layer_get_visible("Shop") exit
layer_set_visible(o_shop.shop.open_panel, false)
layer_set_visible(layer_name, true)
o_shop.shop.open_panel = layer_name
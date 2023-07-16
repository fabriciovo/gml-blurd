shop_open = !shop_open

if shop_open  {
	event_user(0)
} else {
	instance_destroy(o_button_shop_item)
}
 
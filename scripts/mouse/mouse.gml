// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function mouse_init(){
	window_set_cursor(cr_none)
	cursor_sprite = s_mouse_pointer
}


function mouse_hover(){
	cursor_sprite = s_mouse_hover
}

function mouse_pointer(){
	cursor_sprite = s_mouse_pointer
}
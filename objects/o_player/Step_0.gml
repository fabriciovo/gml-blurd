/// @description Insert description here
// You can write your code in this editor
vsp += grav

var _touch = device_mouse_check_button_pressed(0, mb_left)

if(_touch){
	vsp = jump
}

Apply_Gravity()

y += vsp


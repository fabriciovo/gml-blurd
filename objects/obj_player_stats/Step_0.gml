/// @description Start Game
//var start = keyboard_check_pressed(vk_space);
var start = device_mouse_check_button_pressed(0, mb_left);
if (start == true  && room == rm_menu){
    room_goto(rm_gameplay);

}


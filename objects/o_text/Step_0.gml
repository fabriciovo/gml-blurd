// Check for keyboard input
var key = keyboard_key;

// Handle input for the email field
if (keyboard_check(vk_backspace)) {
    email = string_delete(email, string_length(email), 1);
}
else if (keyboard_check_pressed(vk_enter)) {
    // Perform action when Enter key is pressed for email field
    // e.g., validate email or move to the next field
}
else if (keyboard_check_pressed(vk_anykey))  {
	if key != vk_backspace email += keyboard_string
	 keyboard_string = ""
}else {
keyboard_string = ""
}

//// Handle input for the password field
//if (keyboard_check_pressed(vk_backspace) ) {
//    password = string_delete(password, string_length(password) - 1, 1);
//}
//else if (keyboard_check_pressed(vk_enter)) {
//    // Perform action when Enter key is pressed for password field
//    // e.g., submit login credentials or perform authentication
//}
//else if (keyboard_key_press(vk_anykey) && string_length(password) < 20 and active_password) {
//    password += char;
//}

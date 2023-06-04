// Draw the email text field
var _active_email = active_email ? " |" : ""
var _active_password = active_password ? " |" : ""
draw_text(x, y, "Email:");
draw_text(x, y+40, email + _active_email);

// Draw the password text field
draw_text(x, y + 80, "Password: \n" + string_repeat("*", string_length(password)) + _active_password);
//draw_rectangle_color(x, y + 60, x + 200, y + 70,c_black,c_black,c_black,c_black, false);

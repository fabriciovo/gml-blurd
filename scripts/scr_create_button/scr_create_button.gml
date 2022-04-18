/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg text
/// @arg script
                          
function scr_create_button(_x,_y, _width, _height, _text, _script ) {

// Create button
var _button = instance_create_layer(_x, _y, "Instances", obj_button);
// Set values
with (_button) {
    w = _width;
    h = _height;
    text = _text;
    script = _script;

}
          
return _button;

}

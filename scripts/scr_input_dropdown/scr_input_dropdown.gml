/// @function input_box_dd_init(left,top,right,rowHeight,xOffset,yOffset,font,defaultOption,startActive,nextBox);
/// @description Initialise the dropdown box
/// @param {real} left The x coordinate to start drawing the dropdown box
/// @param {real} top The y coordinate to start drawing the dropdown box
/// @param {real} right The x coordinate to finish drawing the dropdown box
/// @param {real} rowHeight The height of each row in the dropdown box
/// @param {real} xOffset The amount of pixels from left to start drawing the dropdown text
/// @param {real} yOffset The amount of pixels from top to start drawing the dropdown text
/// @param {id} font The font of the input text
/// @param {real} defaultOption The option to be selected as default (0 for first option)
/// @param {bool} startActive Whether the input box start as active when created
/// @param {id} nextBox The next box to make active (-1 for none)
function input_box_dd_init(_left,_top,_right,_rowHeight,_xOffset,_yOffset,_font,_defaultOption,_startActive,_nextBox) {
	left = _left;
	top = _top;
	right = _right;
	rowHeight = _rowHeight;
	xOffset = _xOffset;
	yOffset = _yOffset;
	font = _font;
	defaultOption = _defaultOption;
	active = _startActive;
	nextBox = _nextBox;
	//don't change
	selection = defaultOption;
	dd = true;//is a dropdown box (used for switching)
	mouseX = mouse_x;
	mouseY = mouse_y;
}
/// @function input_box_dd_init_options([option1,option2,...]);
/// @description Initialise the dropdown box options
/// @param [option1,option2,...] The options text to select from in the dropdown box
function input_box_dd_init_options() {
	for (var _i=0; _i<argument_count; _i++) {
		dropdownOptions[_i] = argument[_i];
	}
}
/// @function input_box_dd_selection();
/// @description Set the dropdown box selection
function input_box_dd_selection() {
	if (active == true) {
		if (mouse_x >= left && mouse_y >= top && mouse_x <= right && mouse_y <= top+rowHeight+(rowHeight*array_length(dropdownOptions))) {
			if (mouseX != mouse_x || mouseY != mouse_y) {
				mouseX = mouse_x;
				mouseY = mouse_y;
				for (var _i=0; _i<array_length(dropdownOptions); _i++) {
					if (mouse_y >= top+rowHeight+(rowHeight*_i) && mouse_y <= top+rowHeight+(rowHeight*_i)+rowHeight) {
						selection = _i;
						break;
					}
				}
			}
		}
	}
}
/// @function input_box_dd_apply(case);
/// @description Act on the selected option
/// @param {string} case The use case as a string of the dropdown box calling this function (e.g. "category selection", "weapon type", etc...)
function input_box_dd_apply(_case) {
	switch (_case) {
		case "example":
			switch (selection) {
				case 0://option 1
					//Do this
				break;
				case 1://option 2
					//Do that
				break;
				case 2://option 3
					//Do another thing
				break;
			}
		break;
		/* another example below:
		case "weapon type":
			switch (selection) {
				case 0://option 1
					//Do this
				break;
				case 1://option 2
					//Do that
				break;
				case 2://option 3
					//Do another thing
				break;
			}
		break;
		*/
	}
}
/// @function input_box_dd_Global_Left_Pressed();
/// @description Returns true for unselected or false otherwise - Select/unselect the dropdown box
function input_box_dd_Global_Left_Pressed() {
	if (active == false) {
		if (mouse_x >= left && mouse_y >= top && mouse_x <= right && mouse_y <= top+(rowHeight)) {
			active = true;
		}
		return false;
	}
	else {
		active = false;
		return true;
	}
}
///@function input_box_dd_Key_Pressed_Enter();
///@description Returns true for unselected or false otherwise - Unselect the dropdown box
function input_box_dd_Key_Pressed_Enter() {
	if (active == true) {
		active = false;
		return true;
	}
	return false;
}
///@function input_box_dd_move_down();
///@description Move the selection down
function input_box_dd_move_down() {
	if (active == true) {
		if (selection < array_length(dropdownOptions)-1) {
			selection += 1;
		}
	}
}
///@function input_box_dd_move_up();
///@description Move the selection up
function input_box_dd_move_up() {
	if (active == true) {
		if (selection > 0) {
			selection -= 1;
		}
	}
}
/// @function input_box_dd_Draw(drawBox,drawBoxFill,boxActiveColour,boxActiveFillColour,boxInactiveColour,boxInactiveFillColour,textActiveColour,textInactiveColour,highlightColour,dropdownArrowSprite);
/// @description Draw the dropdown box
/// @param {bool} drawBox Whether to draw the dropdown box border
/// @param {bool} drawBoxFill Whether to draw the dropdown box fill
/// @param {real} boxActiveColour The selected colour of the dropdown box border
/// @param {real} boxActiveFillColour The selected colour to fill the dropdown box
/// @param {real} boxInactiveColour The unselected colour of the dropdown box border
/// @param {real} boxInactiveFillColour The unselected colour to fill the dropdown box
/// @param {real} textActiveColour The selected colour of the dropdown text
/// @param {real} textInactiveColour The unselected colour of the dropdown text
/// @param {real} highlightColour The colour of highlighting text
/// @param {id} dropdownArrowSprite The sprite index for the dropdown box arrow
function input_box_dd_Draw(_drawBox,_drawBoxFill,_boxActiveColour,_boxActiveFillColour,_boxInactiveColour,_boxInactiveFillColour,_textActiveColour,_textInactiveColour,_highlightColour,_dropdownArrowSprite) {
	if (active == true) {
		//box
		if (_drawBoxFill == true) {
			draw_rectangle_colour(left,top,right,top+rowHeight+(rowHeight*array_length(dropdownOptions)),_boxActiveFillColour,_boxActiveFillColour,_boxActiveFillColour,_boxActiveFillColour,0);
		}
		if (_drawBox == true) {
			draw_rectangle_colour(left,top,right,top+rowHeight+(rowHeight*array_length(dropdownOptions)),_boxActiveColour,_boxActiveColour,_boxActiveColour,_boxActiveColour,1);
		}
		draw_set_font(font);
		draw_set_colour(_textActiveColour);
		//selection
		draw_text(left+xOffset,top+yOffset,dropdownOptions[selection]);
		//highlight
		draw_rectangle_colour(left,top+rowHeight+(rowHeight*selection),right,top+rowHeight+(rowHeight*selection)+rowHeight,_highlightColour,_highlightColour,_highlightColour,_highlightColour,0);
		//options
		for (var _i=0; _i<array_length(dropdownOptions); _i++) {
			draw_text(left+xOffset,top+yOffset+rowHeight+(rowHeight*_i),dropdownOptions[_i]);
		}
	}
	else {
		//box
		if (_drawBoxFill == true) {
			draw_rectangle_colour(left,top,right,top+(rowHeight),_boxInactiveFillColour,_boxInactiveFillColour,_boxInactiveFillColour,_boxInactiveFillColour,0);
		}
		if (_drawBox == true) {
			draw_rectangle_colour(left,top,right,top+(rowHeight),_boxInactiveColour,_boxInactiveColour,_boxInactiveColour,_boxInactiveColour,1);
		}
		draw_set_font(font);
		draw_set_colour(_textInactiveColour);
		//selection
		draw_text(left+xOffset,top+yOffset,dropdownOptions[selection]);
	}
	draw_sprite(_dropdownArrowSprite,0,right-sprite_get_width(_dropdownArrowSprite),top+(rowHeight/2));
}

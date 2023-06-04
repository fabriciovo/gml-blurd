/// @function input_box_init(left,top,width,height,textYSep,startActive,defaultArray,textWidth,vbarInterval,moveInterval,font,maxLines,hideArray,inputType,excludedArray,nextBox);
/// @description Initialise the input box
/// @param {real} left The x coordinate of the left of the input box
/// @param {real} top The y coordinate of the top of the input box
/// @param {real} width The width of the input box
/// @param {real} height The base/min height of the input box
/// @param {real} textYSep The vertical separation between text lines in the input box (important to test with multiple lines to find the correct value for your font/box)
/// @param {bool} startActive Whether the input box start as active when created
/// @param {array} defaultArray Array for default text variables - [defaultText,defaultFont,defaultOverride]
	// {string} defaultText The default text for the input box
	// {id} defaultFont The default text font for the input box
	// {bool} defaultOverride Whether to override the default text or not
/// @param {string} textWidth The maximum width of text on one line [suggested: width-(xOffset*3)]
/// @param {real} vbarInterval The time in steps to show/hide the vbar
/// @param {real} moveInterval The time in steps to be able to move left/right
/// @param {id} font The font to draw the text
/// @param {real} maxLines The maximum amount of lines for an input box
/// @param {array} hideArray Array for hide variables - [hidden,hideSymbol,hideFont,hideTextYSep]
	// {bool} hidden Whether the input box hides the input text or not
	// {string} hideSymbol The symbol to hide the input text with
	// {id} hideFont The font to draw the text when hidden
	// {real} hideTextYSep The vertical separation between text lines in the input box when hidden (important to test with multiple lines to find the correct value for your font/box)
/// @param {real} inputType Accepted input for the input box (0 = all, 1 = only letters, 2 = only digits, 3 = only letters and digits)
/// @param {array} excludedArray Array of characters to exclude from input
/// @param {id} nextBox The next box to make active when tabbing
function input_box_init(_left,_top,_width,_height,_textYSep,_startActive,_defaultArray,_textWidth,_vbarInterval,_moveInterval,_font,_maxLines,_hideArray,_inputType,_excludedArray,_nextBox) {
	left = _left;
	top = _top;
	width = _width;
	height = _height;
	normalTextYSep = _textYSep;
	active = _startActive;
	defaultText = _defaultArray[0];
	defaultFont = _defaultArray[1];
	textWidth = _textWidth;
	vbarInterval = _vbarInterval;
	moveInterval = _moveInterval;
	font = _font;
	maxLines = _maxLines;
	hidden = _hideArray[0];
	hideSymbol = _hideArray[1];
	hideFont = _hideArray[2];
	hideTextYSep = _hideArray[3];
	inputType = _inputType;
	excludedArray = _excludedArray;
	nextBox = _nextBox;
	//don't change
	if (hidden) {
		textYSep = hideTextYSep;
	}
	else {
		textYSep = normalTextYSep;
	}
	if (_defaultArray[2] == true) {
		input = "";
	}
	else {
		input = defaultText;
	}
	drawInput = defaultText;
	pos = 0;
	endPos = -1;
	vbar = "|";
	currentHeight = height;
	selecting = false;
	alarm[0] = vbarInterval;
}
/// @function input_set_active();
/// @description Set the input box to active
function input_set_active() {
	keyboard_lastchar = "";
	active = true;
	if (!variable_instance_exists(id,"dd")) {//if not a dropdown box
		vbar = "|";
		alarm[0] = vbarInterval;
		pos = string_length(input);
	}
}
/// @function input_set_inactive();
/// @description Set the input box to inactive
function input_set_inactive() {
	active = false;
	if (!variable_instance_exists(id,"dd")) {//if not a dropdown box
		endPos = -1;
		if (input == "") {
			alarm[3] = 1;
		}
	}
}
/// @function input_box_switch(nextBox);
/// @description Make this box inactive and make given nextBox active (Returns true for unselected or false otherwise)
/// @param {id} nextBox The instance id of the input box to make active
function input_box_switch(_nextBox) {
	var _wasActive = active;
	input_set_inactive();
	with (_nextBox) {
		input_set_active();
		alarm[2] = 1;
	}
	if (_wasActive) {
		return true;
	}
	return false;
}
/// @function input_converted_input(string);
/// @description Converts string to drawInput if appropriate
/// @param {string} string The string to convert
function input_converted_input(_string) {
	if (hidden) {
		var _newString = "";
		for (var _count=1; _count<=string_length(_string); _count++) {
			if (string_char_at(_string,_count) == "\n") {
				_newString += "\n";
			}
			else {
				_newString += hideSymbol;
			}
		}
		_string = _newString;
	}
	return _string;
}
/// @function input_box_step(canCutCopy,canPaste);
/// @description Set active and take input for input box
/// @param {bool} canCutCopy Whether can cut copy or not (for Windows only)
/// @param {bool} canPaste Whether can paste or not (for Windows only)
function input_box_step(_canCutCopy,_canPaste) {
	if (active) {
		#region Left click
		if (hidden) {
			draw_set_font(hideFont);
			textYSep = hideTextYSep;
		}
		else {
			draw_set_font(font);
			textYSep = normalTextYSep;
		}
		//drawInput is used instead of input as we aren't changing any text with the below and need to make sure if text is hidden the correct position is selected instead of using the actual text
		//left click
		if (mouse_check_button_pressed(mb_left)) {
			if (mouse_x < left || mouse_y < top || mouse_x > left+width || mouse_y > top+currentHeight) {//click away from input box
				input_set_inactive();
			}
			else {//set typing position in input
				if (selecting == true) {
					selecting = false
					endPos = -1;
				}
				else {
					selecting = true;
				}
				//get pos in line
				var _ind = 1;
				var _pos = 1;
				var _lines = 0;
				for (var _count=1; _pos<=string_length(drawInput); _count++) {
					//new line
					if (string_count("\n",string_copy(drawInput,_ind,_count)) > 0) {
						if (top+height+(_lines*textYSep) > mouse_y) {//mouse is at end of current line
							pos = _pos-1;
							break;
						}
						else {//reset string
							_ind = _pos+1;
							_count = 1;
							_lines += 1;
							_pos++;
						}
					}
					//check string width
					var _string = string_copy(drawInput,_ind,_count);
					if (left+string_width(_string) >= mouse_x && top+height+(_lines*textYSep) > mouse_y) {//mouse at this position
						pos = _pos-1;
						break;
					}
					_pos += 1;
				}
				//clicked at end of input
				if (_pos == string_length(drawInput)+1) {
					pos = _pos-1;
				}
			}
		}
		//select with left mouse
		if (mouse_check_button(mb_left) && selecting == true && (mouse_x >= left && mouse_y >= top && mouse_x <= left+width && mouse_y <= top+currentHeight)) {
			//get pos in line
			var _ind = 1;
			var _pos = 1;
			var _lines = 0;
			for (var _count=1; _pos<=string_length(drawInput); _count++) {
				//new line
				if (string_count("\n",string_copy(drawInput,_ind,_count)) > 0) {
					if (top+height+(_lines*textYSep) > mouse_y) {//mouse is at end of current line
						endPos = _pos-1;
						break;
					}
					else {//reset string
						_ind = _pos+1;
						_count = 1;
						_lines += 1;
						_pos++;
					}
				}
				//check string width
				var _string = string_copy(drawInput,_ind,_count);
				if (left+string_width(_string) >= mouse_x && top+height+(_lines*textYSep) > mouse_y) {//mouse at this position
					endPos = _pos-1;
					break;
				}
				_pos += 1;
			}
			//clicked at end of input
			if (_pos == string_length(drawInput)+1) {
				endPos = _pos-1;
			}
			//dont set if same
			if (endPos == pos) {
				endPos = -1;
			}
		}
		//stop selecting
		if (mouse_check_button_released(mb_left)) {
			selecting = false;
		}
		#endregion
		#region Right click
		if (mouse_check_button_pressed(mb_right)) {
			if (mouse_x < left || mouse_y < top || mouse_x > left+width || mouse_y > top+currentHeight) {//click away from input box
				input_set_inactive();
			}
		}
		#endregion
		#region Input
		//finish typing input box
		if (keyboard_check(vk_enter)) {
			keyboard_lastchar = "";//don't add \n to the input text
			input_set_inactive();
		}
		//tab
		if (keyboard_check(vk_tab)) {
			keyboard_lastchar = "";//don't add tab to the input text
		}
		if (keyboard_check_pressed(vk_tab) && alarm[2] < 0 && nextBox != -1) {
			input_box_switch(nextBox);
		}
		if (keyboard_check_released(vk_tab)) {
			keyboard_lastchar = "";//don't add tab to the input text
		}
		//check holding control (for select all and cut, copy, and paste)
		if (keyboard_check(vk_control)) {
			//select all
			if (keyboard_check_pressed(ord("A")) && input != "") {
				pos = 0;
				endPos = string_length(input);
			}
			//copy & cut - Windows only
			if (endPos != -1) {
				if (keyboard_check_pressed(ord("C")) && _canCutCopy) {//copy - Windows only
					var _start = min(pos,endPos);
					var _end = max(pos,endPos);
					clipboard_set_text(string_copy(input,_start+1,_end-_start));
				}
				if (keyboard_check_pressed(ord("X")) && _canCutCopy) {//cut - Windows only
					var _start = min(pos,endPos);
					var _end = max(pos,endPos);
					clipboard_set_text(string_copy(input,_start+1,_end-_start));
					input = string_delete(input,_start+1,_end-_start);
					endPos = -1;
					pos = _start;
				}
			}
			//paste - Windows only
			if (keyboard_check_pressed(ord("V")) && clipboard_has_text() && _canPaste) {//paste - Windows only
				if (endPos == -1) {
					var _clpbrd = clipboard_get_text();
					for (var _count=1; _count<=string_length(_clpbrd); _count++) {
						var _char = string_char_at(_clpbrd,_count);
						if (string_width(string_insert(_char,input,pos+1)) > textWidth && string_count("\n",input)+1 >= maxLines) {
							break;
						}
						input = string_insert(_char,input,pos+1);
						pos += 1;
					}
				}
				else {
					var _start = min(pos,endPos);
					var _end = max(pos,endPos);
					input = string_delete(input,_start+1,_end-_start);
					endPos = -1;
					pos = _start;
					var _clpbrd = clipboard_get_text();
					for (var _count=1; _count<=string_length(_clpbrd); _count++) {
						var _char = string_char_at(_clpbrd,_count);
						if (string_width(string_insert(_char,input,pos+1)) > textWidth && string_count("\n",input)+1 >= maxLines) {
							break;
						}
						input = string_insert(_char,input,pos+1);
						pos += 1;
					}
				}
			}
			keyboard_lastchar = "";
		}
		//home and end keys
		if (keyboard_check_pressed(vk_home)) {
			if (keyboard_check(vk_shift) && pos != 0) {
				endPos = pos;
			}
			else {
				endPos = -1;
			}
			pos = 0;
		}
		if (keyboard_check_pressed(vk_end)) {
			if (keyboard_check(vk_shift) && pos != string_length(input)) {
				endPos = pos;
			}
			else {
				endPos = -1;
			}
			pos = string_length(input);
		}
		//delete key
		if (keyboard_lastkey == vk_delete) {
			if (endPos == -1) {
				if (pos < string_length(input)) {
					if (string_char_at(input,pos+1) == "\n") {
						input = string_delete(input,pos+1,2);
					}
					else {
						input = string_delete(input,pos+1,1);
					}
				}
			}
			else {//selected
				var _start = min(pos,endPos);
				var _end = max(pos,endPos);
				input = string_delete(input,_start+1,_end-_start);
				endPos = -1;
				pos = _start;
			}
			keyboard_lastkey = -1;
			keyboard_lastchar = "";
		}
		//backspace
		if (keyboard_lastkey == vk_backspace) {
			if (endPos == -1) {
				if (pos > 0) {
					vbar = "|";
					alarm[0] = vbarInterval;
					if (string_char_at(input,pos-1) == "\n") {
						input = string_delete(input,pos-1,2);
						pos -= 2;
					}
					else {
						input = string_delete(input,pos,1);
						pos -= 1;
					}
					keyboard_lastkey = -1;
					keyboard_lastchar = "";
				}
			}
			else {//selected
				var _start = min(pos,endPos);
				var _end = max(pos,endPos);
				input = string_delete(input,_start+1,_end-_start);
				endPos = -1;
				pos = _start;
				keyboard_lastkey = -1;
				keyboard_lastchar = "";
			}
		}
		else if (keyboard_lastchar != "") {//type character (and limit typing)
			//check excluded chars
			for (var _i=0; _i<array_length(excludedArray); _i++) {
				if (keyboard_lastchar == excludedArray[_i]) {
					keyboard_lastchar = "";
					break;
				}
			}
			//check input type
			if (keyboard_lastchar != " ") {//still allow spaces
				switch (inputType) {
					case 1://only letters
						keyboard_lastchar = string_letters(keyboard_lastchar);
					break;
					case 2://only digits
						keyboard_lastchar = string_digits(keyboard_lastchar);
					break;
					case 3://only letters & digits
						keyboard_lastchar = string_lettersdigits(keyboard_lastchar);
					break;
				}
			}
			//input
			var _input = string_insert(keyboard_lastchar,input,pos+1);
			if (endPos != -1) {//selected
				var _start = min(pos,endPos);
				var _end = max(pos,endPos);
				var _input = string_delete(input,_start+1,_end-_start);
				_input = string_insert(keyboard_lastchar,_input,_start+1);
			}
			if (maxLines > 1 && string_count("\n",_input) > 0) {//multiple lines
				//allow typing if current line is less than textWidth, else reset breaks and see if larger than textWidth
				var _lastBreak = string_last_pos_ext("\n",_input,pos);
				var _nextBreak = string_pos_ext("\n",_input,pos);
				if (_nextBreak == 0) {
					_nextBreak = string_length(_input);
				}
				var _currentLine = string_copy(_input,_lastBreak+1,_nextBreak-_lastBreak);
				if (string_width(input_converted_input(_currentLine)) < textWidth) {
					if (endPos != -1) {
						var _start = min(pos,endPos);
						var _end = max(pos,endPos);
						input = string_delete(input,_start+1,_end-_start);
						endPos = -1;
						pos = _start;
					}
					input = string_insert(keyboard_lastchar,input,pos+1);
					pos += 1;
				}
				else {
					//break lines
					_input = string_replace_all(_input,"\n","");
					var _newInput = "";
					var _count = 1;
					while (string_width(input_converted_input(_input)) > textWidth) {
						if (string_width(input_converted_input(string_copy(_input,1,_count))) > textWidth) {
							var _lastSpace = string_last_pos_ext(" ",_input,_count);//spaceInput not draw
							if (_lastSpace == 0) {
								_lastSpace = _count;
							}
							_newInput += string_copy(_input,1,_lastSpace)+"\n";
							_input = string_delete(_input,1,_lastSpace);
							_count = 0;
						}
						_count += 1;
					}
					_newInput +=  _input;
					_input = _newInput;
					//check
					if (string_count("\n",_input) < maxLines) {
						if (endPos != -1) {
							var _start = min(pos,endPos);
							var _end = max(pos,endPos);
							input = string_delete(input,_start+1,_end-_start);
							endPos = -1;
							pos = _start;
						}
						input = string_insert(keyboard_lastchar,input,pos+1);
						pos += 1;
					}
				}
			}
			else if (string_width(input_converted_input(_input)) <= textWidth || (string_width(input_converted_input(_input)) > textWidth && string_count("\n",input_converted_input(_input))+1 < maxLines)) {//only one line
				if (endPos != -1) {
					var _start = min(pos,endPos);
					var _end = max(pos,endPos);
					input = string_delete(input,_start+1,_end-_start);
					endPos = -1;
					pos = _start;
				}
				input = string_insert(keyboard_lastchar,input,pos+1);
				pos += 1;
			}
			keyboard_lastchar = "";
		}
		#region Break lines
		//when only one line and it is larger than textWidth then break line
		if (string_count("\n",input) == 0) {
			if (string_width(input_converted_input(input)) > textWidth) {
				var _lastSpace = string_last_pos(" ",input);
				if (_lastSpace == 0) {
					input = string_insert("\n",input,string_length(input));
				}
				else {
					input = string_insert("\n",input,_lastSpace+1);
				}
				if (pos == string_length(input)-1) {
					pos += 1;
				}
			}
		}
		else {//then when any line is larger or smaller than text width reset breaks
			var _resetBreaks = false;
			//check lines
			var _ind = 1;
			for (var _line=0; _line<=string_count("\n",input); _line++) {
				//get line
				var _nextLB = string_pos_ext("\n",input,_ind);
				if (_nextLB == 0) {
					_nextLB = string_length(input)+1;
				}
				var _lineText = string_copy(input,_ind,_nextLB-_ind+1);//+1 include LB
				var _nextSpace = string_pos_ext(" ",input,_nextLB);
				if (_nextSpace == 0) {
					_nextSpace = string_length(input);
				}
				var _lineTextPlusNextWord = string_copy(input,_ind,_nextLB-_ind);
				if (_line != string_count("\n",input)) {
					_lineTextPlusNextWord += string_copy(input,_nextLB+1,_nextSpace-_nextLB);
				}
				//check line
				if (string_width(input_converted_input(_lineText)) > textWidth || (string_width(input_converted_input(_lineTextPlusNextWord)) < textWidth && string_char_at(input_converted_input(_lineText),_nextLB-_ind+1) == "\n")) {
					_resetBreaks = true;
					break;
				}
				//done
				_ind = _nextLB+1;
			}
			//reset breaks
			if (_resetBreaks) {
				#region get the line vbar is on
				var _totalLines = string_count("\n",input);
				var _startLine = 0;
				if (_totalLines > 0) {
					var _pos = 0;
					while (string_pos_ext("\n",input,_pos) != 0 && string_pos_ext("\n",input,_pos) < pos+1) {
						_pos = string_pos_ext("\n",input,_pos);
						_startLine += 1;
					}
				}
				#endregion
				//break lines
				input = string_replace_all(input,"\n","");
				var _newInput = "";
				var _count = 1;
				while (string_width(input_converted_input(input)) > textWidth) {
					if (string_width(input_converted_input(string_copy(input,1,_count))) > textWidth) {
						var _lastSpace = string_last_pos_ext(" ",input,_count);
						if (_lastSpace == 0) {
							_lastSpace = _count;
						}
						_newInput += string_copy(input,1,_lastSpace)+"\n";
						input = string_delete(input,1,_lastSpace);
						_count = 0;
					}
					_count += 1;
				}
				_newInput +=  input;
				input = _newInput;
				#region set vbar
				//get line vbar is on
				var _totalLines = string_count("\n",input);
				var _line = 0;
				if (_totalLines > 0) {
					var _pos = 0;
					while (string_pos_ext("\n",input,_pos) != 0 && string_pos_ext("\n",input,_pos) < pos+1) {
						_pos = string_pos_ext("\n",input,_pos);
						_line += 1;
					}
				}
				//set vbar
				if (_line != _startLine) {
					pos += 1;
				}
				#endregion
			}
		}
		#endregion
		//change
		if (hidden) {
			drawInput = input_converted_input(input);
		}
		else {
			drawInput = input;
		}
		#endregion
	}
	else {//Set active
		if (mouse_check_button_pressed(mb_left)) {
			if (mouse_x >= left && mouse_y >= top && mouse_x <= left+width && mouse_y <= top+currentHeight) {
				input_set_active();
			}
		}
	}
}
/// @function input_box_alarm0();
/// @description Set the vbar
function input_box_alarm0() {
	if (active) {
		if (vbar == "|") {
			vbar = "";
		}
		else {
			vbar = "|";
		}
		alarm[0] = vbarInterval;
	}
}
/// @function input_box_alarm1();
/// @description Move interval
function input_box_alarm1() {
	//enables move interval
}
/// @function input_box_switch_alarm2();
/// @description Switch delay for input boxes
function input_box_switch_alarm2() {
	//enables switch delay for input boxes
}
/// @function input_box_move_left();
/// @description Set the vbar
function input_box_move_left() {
	if (active && alarm[1] < 0) {
		if (keyboard_check(vk_shift)) {
			if (endPos == -1) {
				if (pos > 0) {
					endPos = pos-1;
				}
			}
			else if (endPos > 0) {
				endPos -= 1;
			}
			if (string_char_at(input,endPos) == "\n") {
				endPos -= 1;
			}
		}
		else {
			vbar = "|";
			alarm[0] = vbarInterval;
			if (endPos == -1) {
				if (pos > 0) {
					pos -= 1;
				}
			}
			else {
				pos = min(pos,endPos);
				endPos = -1;
			}
		}
		alarm[1] = moveInterval;
	}
}
/// @function input_box_move_right();
/// @description Set the vbar
function input_box_move_right() {
	if (active && alarm[1] < 0) {
		if (keyboard_check(vk_shift)) {
			if (endPos == -1) {
				if (pos < string_length(input)) {
					endPos = pos+1;

				}
			}
			else if (endPos < string_length(input)) {
				endPos += 1;
			}
			if (string_char_at(input,endPos) == "\n") {
				endPos += 1;
			}
		}
		else {
			vbar = "|";
			alarm[0] = vbarInterval;
			if (endPos == -1) {
				if (pos < string_length(input)) {
					pos += 1;
				}
			}
			else {
				pos = max(pos,endPos);
				endPos = -1;
			}
		}
		alarm[1] = moveInterval;
	}
}
/// @function input_box_draw(xOffset,yOffset,boxSprite,autoHeight,fillInactiveCol,fillActiveCol,borderInactiveCol,borderActiveCol,textInactiveCol,textActiveCol,highlightCol,highlightAlpha,hideVbarXOffset,hideVbarYOffset);
/// @description Draw the input box
/// @param {real} xOffset The horizontal separation between the left of the input box and the left of the text
/// @param {real} yOffset The vertical separation between the top of the input box and the top of the text
/// @param {id} boxSprite The sprite to use for the input box (-1 for none). Use a Top Left Sprite Origin. Frame 0 will be used for Inactive, frame 1 will be used for active
/// @param {bool} autoHeight Whether the input box automatically grows vertically with the text
/// @param {real} fillInactiveCol The fill colour of the input box when inactive (-1 to not draw)
/// @param {real} fillActiveCol The fill colour of the input box when active (-1 to not draw)
/// @param {real} borderInactiveCol The border colour of the input box when inactive (-1 to not draw)
/// @param {real} borderActiveCol The border colour of the input box when active (-1 to not draw)
/// @param {real} textInactiveCol The text colour when inactive
/// @param {real} textActiveCol The text colour when active
/// @param {real} highlightCol The highlight colour to show over selected text
/// @param {real} highlightAlpha The highlight alpha to show over selected text
/// @param {real} hideVbarXOffset The x offset of the vbar when input text is hidden
/// @param {real} hideVbarYOffset The y offset of the vbar when input text is hidden
function input_box_draw(_xOffset,_yOffset,_boxSprite,_autoHeight,_fillInactiveCol,_fillActiveCol,_borderInactiveCol,_borderActiveCol,_textInactiveCol,_textActiveCol,_highlightCol,_highlightAlpha,_hideVbarXOffset,_hideVbarYOffset) {
	if (hidden) {
		draw_set_font(hideFont);
		textYSep = hideTextYSep;
	}
	else {
		draw_set_font(font);
		textYSep = normalTextYSep;
	}
	//draw box
	var _hght = (_autoHeight && string_count("\n",drawInput) > 0) ? string_height(drawInput)-height+_yOffset : 0;
	currentHeight = height+_hght;
	if (boxSprite != -1) {
		draw_sprite_stretched(_boxSprite,active,left,top,width,height+_hght);
	}
	if (active) {
		//draw fill
		if (_fillActiveCol != -1) {
			draw_rectangle_color(left,top,left+width,top+height+_hght,_fillActiveCol,_fillActiveCol,_fillActiveCol,_fillActiveCol,false);
		}
		//draw border
		if (_borderActiveCol != -1) {
			draw_rectangle_color(left,top,left+width,top+height+_hght,_borderActiveCol,_borderActiveCol,_borderActiveCol,_borderActiveCol,true);
		}
		//set text col
		draw_set_color(_textActiveCol);
	}
	else {
		//draw fill
		if (_fillInactiveCol != -1) {
			draw_rectangle_color(left,top,left+width,top+height+_hght,_fillInactiveCol,_fillInactiveCol,_fillInactiveCol,_fillInactiveCol,false);
		}
		//draw border
		if (_borderInactiveCol != -1) {
			draw_rectangle_color(left,top,left+width,top+height+_hght,_borderInactiveCol,_borderInactiveCol,_borderInactiveCol,_borderInactiveCol,true);
		}
		//set text col
		draw_set_color(_textInactiveCol);
	}
	//draw text
	if (input == "" && drawInput != "") {
		draw_set_font(defaultFont);
	}
	draw_text(left+_xOffset,top+_yOffset,drawInput);
	if (active && endPos == -1) {
		//get line vbar is on
		var _totalLines = string_count("\n",drawInput);
		var _line = 0;
		if (_totalLines > 0) {
			var _pos = 0;
			while (string_pos_ext("\n",drawInput,_pos) != 0 && string_pos_ext("\n",drawInput,_pos) < pos+1) {
				_pos = string_pos_ext("\n",drawInput,_pos);
				_line += 1;
			}
		}
		//draw vbar
		var _start = string_last_pos_ext("\n",drawInput,pos);
		var _end = (pos+sign(_start))-_start;//+0 for first line, +1 for further lines
		var _str = string_copy(drawInput,_start,_end);
		var _xVbarOffset = 0;
		var _yVbarOffset = 0;
		if (hidden) {
			_xVbarOffset = _hideVbarXOffset;
			_yVbarOffset = _hideVbarYOffset;
		}
		draw_text(left+_xOffset+string_width(_str)+_xVbarOffset,top+_yOffset+(_line*textYSep)+_yVbarOffset,vbar);
	}
	//draw select
	if (endPos != -1) {
		draw_set_colour(_highlightCol);
		draw_set_alpha(_highlightAlpha);
		var _start = min(pos,endPos);
		var _end = max(pos,endPos);
		//draw highlight for each line
		var _lineStart = 1;
		for (var _line=0; _line<=string_count("\n",drawInput); _line++) {
			//get end of line
			var _lineEnd = string_pos_ext("\n",drawInput,_lineStart);
			if (_lineEnd == 0) {
				_lineEnd = string_length(drawInput);
			}
			//skip if selection doesnt start on this line
			if (_start > _lineEnd) {
				_lineStart = _lineEnd+1;
				continue;
			}
			//get start of selection on this line
			if (_start < _lineStart) {
				var _startWidth = 0;
				var _startSelect = _lineStart;
			}
			else {
				var _startSelect = _start+1;
				var _startWidth = string_width(string_copy(drawInput,_lineStart,_startSelect-_lineStart));
			}
			//get end of selection on this line
			if (_end > _lineEnd) {
				var _lineWidth = textWidth-_startWidth;
			}
			else {
				var _lineWidth = string_width(string_copy(drawInput,_startSelect,_end-_startSelect+1));
			}
			//draw highlight
			if (_lineWidth > 0) {
				if (_line == 0) {
					var _startY = top+yOffset;
					var _endY = top+height-(yOffset*2);//because height is the whole minimum box height
				}
				else {
					var _startY = top+height-(yOffset*2)+((_line-1)*textYSep)+1;
					var _endY = top+height-(yOffset*2)+((_line)*textYSep)+2-yOffset;
					if (_line == string_count("\n",drawInput)) {
						_endY -= yOffset;
					}
				}
				draw_rectangle(left+xOffset+_startWidth,_startY,left+xOffset+_startWidth+_lineWidth,_endY,false);
			}
			//set new line start
			_lineStart = _lineEnd+1;
		}
		draw_set_alpha(1);
	}
}
/// @description Switch
if (active && nextBox != -1) {
	if (input_box_switch(nextBox)) {//unselected so now act on the selection:
		input_box_dd_apply(useCase);//edit this function with what should happen for each selection
	}
}
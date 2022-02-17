function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -10; // obj_player
	global.__objectDepths[1] = 0; // obj_player_menu
	global.__objectDepths[2] = -10; // obj_player_death
	global.__objectDepths[3] = 0; // obj_player_stats
	global.__objectDepths[4] = -6; // obj_jump_effect
	global.__objectDepths[5] = 0; // obj_coin_effect
	global.__objectDepths[6] = -15; // obj_coin
	global.__objectDepths[7] = 0; // obj_gen
	global.__objectDepths[8] = 0; // obj_monster
	global.__objectDepths[9] = -20; // obj_ok
	global.__objectDepths[10] = 0; // banner


	global.__objectNames[0] = "obj_player";
	global.__objectNames[1] = "obj_player_menu";
	global.__objectNames[2] = "obj_player_death";
	global.__objectNames[3] = "obj_player_stats";
	global.__objectNames[4] = "obj_jump_effect";
	global.__objectNames[5] = "obj_coin_effect";
	global.__objectNames[6] = "obj_coin";
	global.__objectNames[7] = "obj_gen";
	global.__objectNames[8] = "obj_monster";
	global.__objectNames[9] = "obj_ok";
	global.__objectNames[10] = "banner";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}

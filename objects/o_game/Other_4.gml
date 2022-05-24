/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_master:
		room_goto_next();
	break;
	case rm_firebase_load:
		
		alarm[1] = 500;
	break;
	case rm_game:
		instance_create_layer(x,y,"Instances",o_player_stats);
		instance_create_layer(x,y,"Stage",o_stage);
		alarm[0] = 500;
	break;
}

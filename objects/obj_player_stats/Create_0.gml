/// @description Initialize the stats player
display_set_gui_size(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
//initialize var

score = 0;
points = 0;
highscore = 0;

__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );

selected_player = obj_blurd;


gameScore = 0;


hp = 3;
max_hp = 3;
energy = 3;
max_energy = 3;

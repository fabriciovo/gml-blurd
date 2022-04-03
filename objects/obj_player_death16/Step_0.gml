//Keys
y += vsp;
vsp += grav;
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-shake,shake) ));
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-shake,shake) ));
alarm[0] = 1;
shake*=0.9;




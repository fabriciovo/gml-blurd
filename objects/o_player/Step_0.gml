
if(!place_meeting(x,y+vspd, o_solid)) {
	vspd += grav;
}else {
	vspd = 0;
}

y += vspd
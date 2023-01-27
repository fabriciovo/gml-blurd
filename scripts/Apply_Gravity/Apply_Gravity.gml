function Apply_Gravity(){
	if(place_meeting(x,y+vsp,o_solid)){
	
		while(!place_meeting(x,y+ sign(vsp), o_solid )){
			y = y + sign(vsp)
		}
		grounded = true
		vsp = 0
	}else{
		grounded = false
	}

}
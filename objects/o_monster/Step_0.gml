
event_user(state_);

vsp_ += grav_;

if(place_meeting(x,y+vsp_,o_solid)){
	
	while(!place_meeting(x,y+ sign(vsp_), o_solid )){
		y = y + sign(vsp_);
	}
	grounded_ = true;
	vsp_ = 0;
}else{
grounded_ = false;
}



y += vsp_;
x += hsp_;

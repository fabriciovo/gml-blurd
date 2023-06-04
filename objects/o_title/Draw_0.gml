draw_self()

if room == rm_title {
	width = camera_get_view_width(view_camera[0]);
	height =  camera_get_view_height(view_camera[0]);

	draw_set_font(fnt_title)
	draw_set_halign(fa_center)
	draw_text_ext_transformed_color(width/2,500,"Touch to Start",1,500,1,1,image_angle,c_white,c_white,c_white,c_white,1)
}
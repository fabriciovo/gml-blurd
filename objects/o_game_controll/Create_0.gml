global.game_speed = -1
global.max_game_speed = -9
global.one_second = game_get_speed(gamespeed_fps)
global.VW = camera_get_view_width(view_camera[0])
global.VH = camera_get_view_height(view_camera[0])
global.Spawn_VH = view_hport[3]
global.Spawn_VW = view_wport[3]
alarm[0] = 500
file = file_bin_open("myfile.bin", 2);
if file {
	data = file_bin_read_byte(file);
	show_message(data)
}
file_bin_close(file);
/// @description Insert description here
// You can write your code in this editor
if room == rm_game {
	file = file_bin_open("myfile.bin", 2);
	file_bin_write_byte(file, o_player_controll.player);
	file_bin_close(file);
}

alarm[0] = 500
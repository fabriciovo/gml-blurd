// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function JSON_read(file_name){

		if(!file_exists(file_name)) {
			show_message("File does not exist!")
			return undefined
		}
		var json = undefined
		var fs = file_text_open_read(working_directory + file_name);
		var file = ""
		while(file_text_eof(fs) == false){
			file += file_text_readln(fs)
		}
		file_text_close(fs)
		json = json_parse(file)
		return json
	
}
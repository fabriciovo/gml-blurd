function f_format_number(a_number){

	
	var _sufix = ["", "k", "M", "B", "T", "Q"];
    var _sufixo_index = 0;
    
	

	
    while (a_number >= 1000)
    {
        a_number /= 1000;
        _sufixo_index++;
    }
    
    return string_format(a_number, 1, 2 ) + _sufix[_sufixo_index];
	
}
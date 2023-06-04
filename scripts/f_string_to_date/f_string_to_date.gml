///@func    DateStringConvert(date_str)
///@param    {string}    date_str    The date as a string (format must be "year:month:dayThour:minute:second+utc_offset")
///@desc    Returns -1 if the date is invalid, otherwise returns the datetime
function f_string_to_date(_date_str){
	var datetime_string = _date_str;
	var parts = string_split(datetime_string, " ");
	var date_parts = string_split(parts[0], "/");
	var time_parts = string_split(parts[1], ":");
	var day = real(date_parts[0]);
	var month = real(date_parts[1]);
	var year = real(date_parts[2]);
	var hour = real(time_parts[0]);
	var minute = real(time_parts[1]);
	var second = real(time_parts[2]);
	var datetime = date_create_datetime(year, month, day, hour, minute, second);
	return datetime
}

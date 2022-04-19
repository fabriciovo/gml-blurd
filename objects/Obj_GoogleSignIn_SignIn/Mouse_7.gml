
var client_id = ""

if(os_browser != browser_not_a_browser)
	client_id = "" // REPLACE HERE
else	
{
	if(os_type == os_android)
		client_id = "" // REPLACE HERE



	if(os_type == os_ios)
		client_id = "" // REPLACE HERE

}

if(client_id != "")
	GoogleSignIn_Show(client_id)

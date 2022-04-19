
event_inherited()


if(async_load[?"type"] == "GooglePlayServices_SignIn")
if(async_load[?"success"])
{
	
	if(FirebaseAuthentication_Library_useSDK)
	{
		token = GooglePlayServices_GetServerAuthCode()
		event_user(0)
		exit
	}
	
	//https://developers.google.com/identity/protocols/oauth2/web-server#exchange-authorization-code
	
	var header_map = json_decode(FirebaseREST_KeyValue("Content-Type","application/x-www-form-urlencoded"))
	
	var body = "code="+ GooglePlayServices_GetServerAuthCode() +
		"&client_id=" + client_id +
		"&client_secret=" + client_secret +
		"&redirect_uri=" + redirect_uri +
		"&grant_type=authorization_code"
		
	request = http_request("https://oauth2.googleapis.com/token","POST",header_map,body)
		
	ds_map_destroy(header_map)
}

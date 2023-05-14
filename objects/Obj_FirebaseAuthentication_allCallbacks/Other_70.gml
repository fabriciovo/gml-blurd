
if(!ds_map_exists(async_load,"type"))
	exit
if(!string_count("FirebaseAuthentication",async_load[?"type"]))
	exit
var ins = instance_create_depth(0,0,0,Obj_Debug_FallText_Authentication)
ins.text = string(async_load[?"listener"]) + " - " + async_load[?"type"]  + " - " + string(async_load[?"status"])

if(ds_map_exists(async_load,"value"))
	ins.text += " -> " + string(async_load[?"value"])
	
if(ds_map_exists(async_load,"errorMessage"))
	ins.text += " -> " + string(async_load[?"errorMessage"])

if(async_load[?"status"] == 200)
	ins.color = c_white
else
	ins.color = c_red

///////////////////////////////////////////////////////

if(async_load[?"status"] == 200)//400 is error
//if(async_load[?"listener"] == myListener)//comapre with your listener if you have one...
switch(async_load[?"type"])
{
	case "FirebaseAuthentication_SignInWithCustomToken":
		var user_raw = async_load[?"value"]
		
	break
			
	case "FirebaseAuthentication_SignIn_Email":
		user_raw = async_load[?"value"]
		var decoded_user = json_parse(user_raw)
		show_message(decoded_user.users[0])
		show_message(decoded_user.users[0].email)
		show_message(decoded_user.users[0].lastRefreshAt)
		show_message(decoded_user.users[0].lastLoginAt)
		show_debug_message(decoded_user.users[0].lastLoginAt)

		//// Assumindo que você já tem o valor do campo `lastLoginAt`
		//var lastLoginAt = decoded_user.users[0].lastLoginAt; // Exemplo de valor em milissegundos
		//// Converter o valor em milissegundos para componentes de data e hora
		//var dt = new Date(lastLoginAt);
		//var year = date_get_year(dt);
		//var month = date_get_month(dt);
		//var day = date_get_day(dt);
		//var hour = date_get_hour(dt);
		//var minute = date_get_minute(dt);
		//var second = date_get_second(dt);

		//// Criar uma data válida no GameMaker
		//var lastLoginDate = date_create_datetime(year, month, day, hour, minute, second);
		//show_message("Last Login Date: " + string(lastLoginDate));
		//show_message("Last Login Date: " + string(lastLoginDate));
		//show_message("Last Refresh At: " + string(decoded_user.users[0].lastRefreshAt));
		
		

		//if (date_compare_date(lastLoginAt, decoded_user.users[0].lastRefreshAt) == -1)
		//    show_message("date1 is earlier than date2");
		//else if (date_compare_date(lastLoginAt, decoded_user.users[0].lastRefreshAt) == 1)
		//    show_message("date2 is earlier than date1");
		//else
		//    show_message("date1 and date2 are the same");
		instance_create_layer(x,y,"Instances",o_transition, new constructor_transition(s_trans_sq,rm_firestore_loading))
		//firebase_firestore_read()
	break
	
	case "FirebaseAuthentication_SignUp_Email":
		var user_raw = async_load[?"value"]
		//firebase_create();
		instance_create_layer(x,y,"Instances",o_transition, new constructor_transition(s_trans_sq,rm_firestore_loading))
		//firebase_firestore_read()
	break
		
			
	case "FirebaseAuthentication_SignIn_Anonymously":
		var user_raw = async_load[?"value"]
	break
	
	
	case "FirebaseAuthentication_SendPasswordResetEmail":
		
	break
	
		
	case "FirebaseAuthentication_ChangeEmail":
		
	break
		
	
	case "FirebaseAuthentication_ChangePassword":
		
	break


	case "FirebaseAuthentication_ChangeDisplayName":
		
	break

		
	case "FirebaseAuthentication_ChangePhotoURL":
		
	break
		

	case "FirebaseAuthentication_SendEmailVerification":
		
	break
		
	
	case "FirebaseAuthentication_DeleteAccount":
		
	break
	
	
	case "FirebaseAuthentication_LinkWithEmailPassword":
		var user_raw = async_load[?"value"]
	break
	
	
	case "FirebaseAuthentication_SignIn_OAuth":
		var user_raw = async_load[?"value"]
	break

	
	case "FirebaseAuthentication_LinkWithOAuthCredential":
		var user_raw = async_load[?"value"]
	break
	
	
	case "FirebaseAuthentication_UnlinkProvider":
		var user_raw = async_load[?"value"]
	break
		
	
	case "FirebaseAuthentication_RefreshUserData":
		var user_raw = async_load[?"value"]
	break
		
	
	case "FirebaseAuthentication_GetIdToken":
		value = async_load[? "value"]
	break
	
	
	case "FirebaseAuthentication_SignInWithPhoneNumber":
		var user_raw = async_load[?"value"]
	break


	case "FirebaseAuthentication_LinkWithPhoneNumber":
		var user_raw = async_load[?"value"]
	break
	
	
	case "FirebaseAuthentication_ReauthenticateWithOAuth":
		var user_raw = async_load[?"value"]
	break

	
	case "FirebaseAuthentication_ReauthenticateWithPhoneNumber":
		var user_raw = async_load[?"value"]
	break
	
	
	case "SDKFirebaseAuthentication_SignInWithProvider":
		var user_raw = async_load[?"value"]
	break

		
	case "SDKFirebaseAuthentication_LinkWithProvider":
		var user_raw = async_load[?"value"]
	break
	
	
	case "SDKFirebaseAuthentication_ReauthenticateWithProvider":
		var user_raw = async_load[?"value"]
	break
	
	
	case "FirebaseAuthentication_IdTokenListener":
		var token = async_load[?"value"]
	break
}		


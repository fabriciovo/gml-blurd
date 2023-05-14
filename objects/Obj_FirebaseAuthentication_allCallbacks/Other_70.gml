
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
	
		//var decoded_user = json_parse(user_raw)
		//show_message(decoded_user.users[0])
		//show_message(decoded_user.users[0].email)
		//show_message(decoded_user.users[0].lastRefreshAt)
		//show_message(decoded_user.users[0].lastLoginAt)
		//show_debug_message(decoded_user.users[0].lastLoginAt)
		//var timestamp = decoded_user.users[0].lastLoginAt; // Valor do timestamp

		//// Converter o timestamp para segundos dividindo por 1000
		//var timestampSeconds = timestamp div 1000;

		//// Extrair os componentes da data
		//var seconds = timestampSeconds mod 60;
		//var minutes = (timestampSeconds div 60) mod 60;
		//var hours = (timestampSeconds div 3600) mod 24;
		//var days = (timestampSeconds div 86400) mod 31; // Aproximação para o número máximo de dias em um mês
		//var months = (timestampSeconds div 2678400) mod 12; // Aproximação para o número máximo de meses em um ano
		//var years = (timestampSeconds div 31536000); // Aproximação para o número máximo de segundos em um ano

		//// Adicionar os valores extraídos aos valores de referência
		//var baseYear = 1970; // Ano de referência para a época UNIX
		//years += baseYear;
		//months += 1; // Adicionar 1 ao mês para obter valores de 1 a 12

		//// Exibir os componentes da data
		//show_message("Ano: " + string(years));
		//show_message("Mês: " + string(months));
		//show_message("Dia: " + string(days));
		//show_message("Hora: " + string(hours));
		//show_message("Minutos: " + string(minutes));
		//show_message("Segundos: " + string(seconds));
		

		//firebase_firestore_read()
		firebase_read()
	break
	
	case "FirebaseAuthentication_SignUp_Email":
		var user_raw = async_load[?"value"]
		firebase_create();
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


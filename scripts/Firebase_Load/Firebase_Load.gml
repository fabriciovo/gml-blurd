// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Firebase_Load(){
	FirebaseFirestore("Users").Child("user: " + string(FirebaseAuthentication_GetUID())).Read()
}
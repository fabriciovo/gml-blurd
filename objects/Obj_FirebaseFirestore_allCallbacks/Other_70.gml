
if(!ds_map_exists(async_load,"type"))
	exit

if(!string_count("FirebaseFirestore",async_load[?"type"]))
	exit

var ins = instance_create_depth(0,0,0,Obj_Debug_FallText_Firestore)
ins.text = string(async_load[?"listener"]) + " - " + async_load[?"type"]  + " - " + async_load[?"path"] + " - " + string(async_load[?"status"])

if(ds_map_exists(async_load,"value"))
	ins.text += " -> " + string(async_load[?"value"])
	
if(ds_map_exists(async_load,"errorMessage"))
	ins.text += " -> " + string(async_load[?"errorMessage"])

if(async_load[?"status"] == 200)
	ins.color = c_white
else
	ins.color = c_red

//////////////////////
	
if(async_load[?"status"] == 200)//400: general error; 404: document not found; 401: Unauthenticated; 403: permission-denied; 409: already-exists
//if(async_load[?"listener"] == myListener)//comapre with your listener if you have one...
switch(async_load[?"type"])
{
	case "FirebaseFirestore_Document_Set":
		var path = async_load[?"path"]
		show_message("FirebaseFirestore_Document_Set")
	break

	case "FirebaseFirestore_Document_Update":
		show_message("FirebaseFirestore_Document_Update")
		var path = async_load[?"path"]
	break

	case "FirebaseFirestore_Document_Read":
		show_message("FirebaseFirestore_Document_Set")
		var _path = async_load[?"path"]
		var _value = async_load[?"value"]
		show_message(_path)
		show_message(_value)
		var _json = json_parse(_value)
		var _player =  o_player_controll;
		
		//single value
		_player.coins = real(_json.coins);
		_player.coins_per_second = real(_json.coins_per_second);
		_player.total_coins = real(_json.total_coins);
		
		//maps
		json_add_to_ds_map(_json.shop_items,o_player_controll.ds_shop_items)
		json_add_to_ds_map(_json.collectables,o_player_controll.ds_collectables)
		json_add_to_ds_map(_json.quests,o_player_controll.ds_quests)
		json_add_to_ds_map(_json.upgrades,o_player_controll.ds_upgrades)
		json_add_to_ds_map( _json.craft_items,o_player_controll.ds_craft_items)
		json_add_to_ds_map(_json.secret_items,o_player_controll.ds_secret_items)
	break
	
	case "FirebaseFirestore_Document_Listener":
		var path = async_load[?"path"]
		value = async_load[?"value"]
	break

	case "FirebaseFirestore_Document_Delete":
		var path = async_load[?"path"]
	break
	
	case "FirebaseFirestore_Collection_Add":
		var path = async_load[?"path"]
	break
				
	case "FirebaseFirestore_Collection_Read":
		var path = async_load[?"path"]
		value = async_load[?"value"]
	break
	
	case "FirebaseFirestore_Collection_Listener":
		var path = async_load[?"path"]
		value = async_load[?"value"]
	break
			
	case "FirebaseFirestore_Collection_Query":
		var path = async_load[?"path"]
		value = async_load[?"value"]
	break
}

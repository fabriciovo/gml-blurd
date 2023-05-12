struct_upgrade_items = {
	energy_drink: new constructor_upgrade("Energy Drink","energy_drink",s_energy_drink,5,0,"Power Up",2,0),
	spike_head: new constructor_upgrade("Spike Head","spike_head",s_spike_head,1,0,"Monster",1.3,0),
	snail: new constructor_upgrade("Snail","snail",s_snail,1,0,"Monster",1.3,0),
	angry_bird: new constructor_upgrade("Angry Bird","angry_bird",s_snail,1,0,"Monster",1.3,0),
}
	
struct_upgrade_unlockable = {
	unlock_ice_cream: new constructor_upgrade_unlockable("Unlock new Food","unlock_ice_cream", s_ice_cream,1, 2, "Unlockable",2,0,"food",global.struct_foods.ice_cream),
	unlock_energy_drink: new constructor_upgrade_unlockable("Unlock new Food","unlock_energy_drink", s_energy_drink,1, 2, "Unlockable",2,0,"food",global.struct_foods.energy_drink),
	unlock_chocolate: new constructor_upgrade_unlockable("Unlock new Food","unlock_chocolate", s_chocolate,1, 2, "Unlockable",2,0,"food",global.struct_foods.chocolate),
	unlock_spike_head: new constructor_upgrade_unlockable("Unlock new Food","unlock_spike_head",s_spike_head,1, 2, "Unlockable",2,0,"upgrade",global.struct_upgrade_items.spike_head),
	unlock_snail: new constructor_upgrade_unlockable("Unlock new Food","unlock_snail", s_snail, 1, 2, "Unlockable",2,0, "upgrade",global.struct_upgrade_items.snail),
	unlock_angry_bird: new constructor_upgrade_unlockable("Unlock new Food","unlock_angry_bird", s_energy_drink,1, 2, "Unlockable",2,0,"upgrade", global.struct_upgrade_items.angry_bird),
}
	 
	 
var _list = o_player_controll.ds_upgrades
var _list_items_values = ds_map_values_to_array(_list)
if _list_items_values == undefined exit
var _list_items_values_size = array_length(_list_items_values)
if _list_items_values_size == 0 exit

for(var _i = 0; _i < _list_items_values_size; _i++) {
	if _list_items_values[_i].type == "Monster" {  
		if _list_items_values[_i].level > 1 {
			event_user(_list_items_values[_i].number)
		 }
	}
}
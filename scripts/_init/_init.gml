// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	gml_pragma("global", "init()");
	
	enum ENUM_MATERIALS {
		SPIKE,
		FEATHER,
		SHELL
	}
	
	enum ENUM_SECRET_ITEMS {
		SKY_STONE
	}
	
	global.struct_foods = {
		candy: new constructor_food("Candy","candy",s_candy,5,1,1.1,0),
		ice_cream: new constructor_food("Ice Cream","ice_cream",s_ice_cream,10,5,1.2,0),
		chocolate: new constructor_food("Chocolate","chocolate",s_chocolate,50,25,1.3,0),
		energy_drink: new constructor_food("Energy Drink","energy_drink",s_energy_drink,80,40,2.1,0),
	}
	
	global.struct_upgrade_items = {
		energy_drink: new constructor_upgrade("Energy Drink","energy_drink",s_energy_drink,5,0,"Power Up",2,0),
		spike_head: new constructor_upgrade("Spike Head","spike_head",s_spike_head,1,0,"Monster",1.3,0),
		snail: new constructor_upgrade("Snail","snail",s_snail,1,0,"Monster",1.3,0),
		angry_bird: new constructor_upgrade("Angry Bird","angry_bird",s_snail,1,0,"Monster",1.3,0),
	}
	
	
	global.struct_upgrade_unlockable = {
		unlock_ice_cream: new constructor_upgrade_unlockable("Unlock Ice Cream","unlock_ice_cream", s_ice_cream,60, 2, "Unlockable",2,0,"food",global.struct_foods.ice_cream),
		unlock_energy_drink: new constructor_upgrade_unlockable("Unlock Energy Drink","unlock_energy_drink", s_energy_drink,300, 2, "Unlockable",2,0,"food",global.struct_foods.energy_drink),
		unlock_chocolate: new constructor_upgrade_unlockable("Unlock Chocolate","unlock_chocolate", s_chocolate,160, 2, "Unlockable",2,0,"food",global.struct_foods.chocolate),
		unlock_spike_head: new constructor_upgrade_unlockable("Unlock Spike Head","unlock_spike_head",s_spike_head,50, 2, "Unlockable",2,0,"upgrade",global.struct_upgrade_items.spike_head),
		unlock_snail: new constructor_upgrade_unlockable("Unlock Snail","unlock_snail", s_snail, 100, 2, "Unlockable",2,0, "upgrade",global.struct_upgrade_items.snail),
		unlock_angry_bird: new constructor_upgrade_unlockable("Unlock Angry Bird","unlock_angry_bird", s_energy_drink,150, 2, "Unlockable",2,0,"upgrade", global.struct_upgrade_items.angry_bird),
	}
	
	global.struct_upgrade_unlockable = {
		unlock_ice_cream: new constructor_upgrade_unlockable("Unlock Ice Cream","unlock_ice_cream", s_ice_cream,60, 2, "Unlockable",2,0,"food",global.struct_foods.ice_cream),
		unlock_energy_drink: new constructor_upgrade_unlockable("Unlock Energy Drink","unlock_energy_drink", s_energy_drink,300, 2, "Unlockable",2,0,"food",global.struct_foods.energy_drink),
		unlock_chocolate: new constructor_upgrade_unlockable("Unlock Chocolate","unlock_chocolate", s_chocolate,160, 2, "Unlockable",2,0,"food",global.struct_foods.chocolate),
		unlock_spike_head: new constructor_upgrade_unlockable("Unlock Spike Head","unlock_spike_head",s_spike_head,50, 2, "Unlockable",2,0,"upgrade",global.struct_upgrade_items.spike_head),
		unlock_snail: new constructor_upgrade_unlockable("Unlock Snail","unlock_snail", s_snail, 100, 2, "Unlockable",2,0, "upgrade",global.struct_upgrade_items.snail),
		unlock_angry_bird: new constructor_upgrade_unlockable("Unlock Angry Bird","unlock_angry_bird", s_energy_drink,150, 2, "Unlockable",2,0,"upgrade", global.struct_upgrade_items.angry_bird),
	}
	
	global.struct_secret_items = {
		sky_stone: {
			name:"Sky Stone",
			description:"Open a portal to teleport you for bonus Stage",
			count: 0,
			sprite: s_sky_stone,
			craft_items: {
				spikes: 5,
				feather: 5,
				shell: 5
			},
			func: function(){
				room_goto(rm_bonus_stage_1)
			},
			craft: function() {
				var _player_craft_items = o_player_controll.ds_craft_items
				var _player_secret_items = o_player_controll.ds_secret_items		
				

				if _player_craft_items[? "spike"].count >= craft_items.spikes  
				and _player_craft_items[? "feather"].count >= craft_items.feather  
				and _player_craft_items[? "shell"].count >= craft_items.shell 
				{
					_player_craft_items[? "spike"].count -= craft_items.spikes
					_player_craft_items[? "feather"].count -= craft_items.feather
					_player_craft_items[? "shell"].count -= craft_items.shell
					_player_secret_items[? "sky_stone"].count += 1
					_player_secret_items[? "sky_stone"].unlocked = true
				}
			}
		}
	}
	global.struct_craft_bag = 	{
		spike:{
			name:"Spike",
			description: "",
			sprite: s_spike_pickup,
			count: 0,
		},
		feather: {
			name:"Bird Feather",
			description: "",
			sprite: s_feather_pickup,
			count: 0,
		},
		shell: {
			name:"Snail Hull",
			description: "",
			sprite: s_shell_pickup,
			count: 0,
		}
	}
	
}
		


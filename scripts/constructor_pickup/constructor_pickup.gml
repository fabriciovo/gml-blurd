// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_pickup() constructor {
	grav = .25;
	vsp = -4
	hsp = random_range(.25,3)
	can_pickup = false;

	step_method = function(){
		apply_gravity()
		
		
		if hsp <= 0 {
			hsp = 0
		}else {
			hsp -= .1;
			x+=hsp
		}
	}
	
}

function constructor_pickup_apple() : constructor_pickup() constructor {
	sprite_index = s_item
	
	left_button_method = function() {
		o_player_controll.player.coins += 10
		o_player_controll.player.total_coins += 10
		instance_destroy()
	}
}

function constructor_pickup_spike() : constructor_pickup() constructor {
	sprite_index = s_item
	image_blend = c_olive
	left_button_method = function() {
		var _item = o_player_controll.ds_craft_items[| 0]
		if not _item.unlocked {
			_item.unlocked = true
		}
		_item.count += 1
		instance_destroy()
	}
}

function constructor_pickup_shell() : constructor_pickup() constructor {
	sprite_index = s_item
	image_blend = c_blue
	left_button_method = function() {
		var _item = o_player_controll.ds_craft_items[| 1]
		if not _item.unlocked {
			_item.unlocked = true
		}
		_item.count += 1
		instance_destroy()
	}
}

function constructor_pickup_feather() : constructor_pickup() constructor {
	sprite_index = s_item
	image_blend = c_green
	left_button_method = function() {
		var _item = o_player_controll.ds_craft_items[| 2]
		if not _item.unlocked {
			_item.unlocked = true
		}
		_item.count += 1
		instance_destroy()
	}
}
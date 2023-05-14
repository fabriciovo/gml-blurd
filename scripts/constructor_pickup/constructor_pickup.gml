// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_pickup() constructor {
	image_xscale = 2
	image_yscale = 2
	grav = .25;
	vsp = -4
	hsp = random_range(.25,3)
	can_pickup = false;
	timer = 0
	grounded = false
	depth = 0
	event_create = function() {
		juice();	
		apply_scaling_method(0.8,1.7,1,1)
	}

	step_method = function(){
		juice_step_method()
		if not grounded {
			apply_gravity()
		} else {
			y = y + sin(timer * 0.03) * 0.5
			timer++
		}
		
		if hsp <= 0 {
			hsp = 0
		}else {
			hsp -= .1;
			x += hsp
		}

	}
	
	event_draw = function(){
		juice_draw_method(x,y)
	}
	
}

function constructor_pickup_apple() : constructor_pickup() constructor {
	sprite_index = s_apple_pickup
	left_button_method = function() {
		o_player_controll.coins += 10
		o_player_controll.total_coins += 10
		instance_destroy()
	}
}

function constructor_pickup_spike() : constructor_pickup() constructor {
	sprite_index = s_spike_pickup
	left_button_method = function() {
		var _item = o_player_controll.ds_craft_items[? "spike"]
		if not _item.unlocked {
			_item.unlocked = true
		}
		_item.count += 1
		instance_destroy()
	}
}

function constructor_pickup_shell() : constructor_pickup() constructor {
	sprite_index = s_shell_pickup

	left_button_method = function() {
		var _item = o_player_controll.ds_craft_items[? "shell"]
		if not _item.unlocked {
			_item.unlocked = true
		}
		_item.count += 1
		instance_destroy()
	}
}

function constructor_pickup_feather() : constructor_pickup() constructor {
	sprite_index = s_feather_pickup
	left_button_method = function() {
		var _item = o_player_controll.ds_craft_items[? "feather"]
		if not _item.unlocked {
			_item.unlocked = true
		}
		_item.count += 1
		instance_destroy()
	}
}
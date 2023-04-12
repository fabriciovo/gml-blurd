/// @description Alarm0 Spawn Spike Head 
instance_create_layer(o_spawn_point.x, o_spawn_point.y,"Instances", o_monster, new Spike_Head(global.upgrade_items.spike_head.level))
global.upgrade_items.spike_head.can_spawn = true

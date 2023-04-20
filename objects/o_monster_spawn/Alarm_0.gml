/// @description Spawn Spike Head 
instance_create_layer(o_spawn_point.x, o_spawn_point.y,"Instances", o_monster, new constructor_monster_spike_head())
global.struct_upgrade_items.spike_head.can_spawn = true

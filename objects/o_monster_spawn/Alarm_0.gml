/// @description Alarm0 Spawn Spike Head 
//instance_create_layer(global.Spawn_VW, random(global.Spawn_VH),"Instances", o_monster, new Fly())
//instance_create_layer(global.Spawn_VW, random(global.Spawn_VH),"Instances", o_monster, new Spike_Head())
instance_create_layer(o_spawn_point.x, o_spawn_point.y,"Instances", o_monster, new Spike_Head())
monsters.spike_head.can_spawn = true

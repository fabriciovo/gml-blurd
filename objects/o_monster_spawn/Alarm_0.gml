/// @description Alarm0 Spawn Snail 
//instance_create_layer(global.Spawn_VW, random(global.Spawn_VH),"Instances", o_monster, new Fly())
//instance_create_layer(global.Spawn_VW, random(global.Spawn_VH),"Instances", o_monster, new Spike_Head())
instance_create_layer(x, y,"Instances", o_monster, new Spike_Head())
monsters.spike_head.can_spawn = true

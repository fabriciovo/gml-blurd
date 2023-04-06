/// @description Alarm2 Spawn Angry Bird
// You can write your code in this editor
instance_create_layer(global.Spawn_VW, random(global.Spawn_VH),"Instances", o_monster, new Angry_Bird(monsters.angry_bird.lvl))
monsters.angry_bird.can_spawn = true
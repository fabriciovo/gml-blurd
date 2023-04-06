/// @description Alarm1 Spawn Snail
// You can write your code in this editor
instance_create_layer(x, y-7,"Instances", o_monster, new Snail(monsters.snail.lvl))
monsters.snail.can_spawn = true

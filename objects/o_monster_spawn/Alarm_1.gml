/// @description Alarm1 Spawn Snail
// You can write your code in this editor
instance_create_layer(x, y-7,"Instances", o_monster, new Snail(global.upgrade_items.snail.level))
global.upgrade_items.snail.can_spawn = true

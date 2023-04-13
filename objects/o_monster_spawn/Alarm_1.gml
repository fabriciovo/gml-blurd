/// @description Alarm1 Spawn Snail
// You can write your code in this editor
instance_create_layer(x, y-7,"Instances", o_monster, new constructor_monster_snail(global.struct_upgrade_items.snail.level))
global.struct_upgrade_items.snail.can_spawn = true

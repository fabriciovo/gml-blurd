/// @description Insert description here
// You can write your code in this editor
view_width = view_wport[3];
view_height = view_hport[3];

instance_create_layer(view_width, random(view_height),"Instances", o_monster, new Fly())

//instance_create_layer(view_width, y,"Instances", o_monster, new Snail())

alarm[1] = global.one_second * 2





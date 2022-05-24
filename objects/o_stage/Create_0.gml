/// @description Insert description here
// You can write your code in this editor
background_ = noone;
floor_ = noone;
speed_ = -1;


layer_ = layer_create(depth, "Background");
layer_background_create(layer_, s_background);
layer_background_htiled(layer_, true);
layer_hspeed(layer_, speed_);

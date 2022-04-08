/// @description Insert description here
// You can write your code in this editor
if(object_exists(obj_player) && active && obj_player_stats.energy > 0) {
instance_create_layer(obj_player.x,obj_player.y,"Effects", obj_player_stats.selected_player._power);
active = false;
alarm[0] = 120;
obj_player_stats.energy -= 1;
}

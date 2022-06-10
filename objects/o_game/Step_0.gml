/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.coins % 1000);

if (global.coins  % 1000000 == 0 && global.coins != 0) {
   coins_formated_ = string_format(global.coins  / 1000000,0,0) + "M";
} else if (global.coins  % 1000 == 0 && global.coins  != 0) {
   coins_formated_ = string_format(global.coins  / 1000,1,0) + "K";
   show_message(coins_formated_);
} else {
   coins_formated_ = string_format(global.coins,1,0);
}

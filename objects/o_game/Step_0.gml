/// @description Insert description here
// You can write your code in this editor

if (global.coins % 1000000 == 0 && global.coins != 0) {
   coins_formated_ = string_format(global.coins  / 1000000,2,2) + "M";
} else if (global.coins % 1000 == 0 && global.coins  != 0) {
   coins_formated_ = string_format(global.coins  / 1000,2,2) + "K";
} else {
   coins_formated_ = string_format(global.coins,1,0);
}

/// @description Insert description here
// You can write your code in this editor
lords = 0;
lords_sprite = 0;
player_cards = 0;
player_cards_sprite = 0;

player_units = 0;
player_races = 0;
player_units_sprite = 0;
scr_init_info_lords();
scr_init_player_cards();
scr_initialize_info_units();

chosen_lord = lords[0];
chosen_lord_sprite = lords_sprite[1];

scr_init_players_units(chosen_lord_sprite);
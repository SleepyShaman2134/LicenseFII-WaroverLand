/// @description Insert description here
// You can write your code in this editor
//card_width=...
//card_height=...
#macro MAXPHAND 5 
randomise();


handPCount = 0;
xPos = 400;
yPos = 2242;
player_units = 0;
player_units_sprite = 0;
player_races = 0;
player_cards = 0;
player_cards_sprite = 0;
hand = 0;
handCard = 0;
//deck = instance_create_depth(1728, 2240, -5, obj_deck);


willpower = 300;
discordia = 0;
magic = 0;
gold = 300;
tier1 = 0;
tier2 = 0;
tier3 = 0;
for(i = 0; i < 5; i += 1){
	hand[i]=0;
	handCard[i] = noone;
}



//Coordinates of player1's power deck
deckp1_x = 1728;
deckp1_y = 2240;
socket = 0;

score_player = 0;
//face_up == 1 cards will be face up
face_up = 0;
deckPCount = 0; //Number of cards in deck
deckPoint = 0; //The top of the deck
deck_buffer_x = .4;
deck_buffer_y = .4;


// create the 4 tiers of units using tier 1, 2, 3 and 4 sets objects

scr_initialize_info_units();
//scr_init_sprite_array();
scr_init_players_units();
scr_init_player_cards();
i = 0;
deck = instance_create_depth(1728, 2000, -5, obj_pdeck);
tier1 = instance_create_depth(2144, 1920, -3, obj_tier);
lvl_button = instance_create_depth(1950, 2200, -3, obj_lvlmeter);

with(tier1){
	tier = 1;
	tieripos = 2144;
	tierjpos = 1920;
	sprite_index = spr_tier1;
}
i++;
tier2 = instance_create_depth(2144, 1620, -3, obj_tier);
with(tier2){
	tier = 2;
	tieripos = 2144;
	tierjpos = 1620;
	sprite_index = spr_tier2;
}
i++;
tier3 = instance_create_depth(2144, 1320, -3, obj_tier);
with(tier3){
	tier = 3;
	tieripos = 2144;
	tierjpos = 1320;
	sprite_index = spr_tier3;
}
game = instance_create_depth(0, 0, -3, obj_game);
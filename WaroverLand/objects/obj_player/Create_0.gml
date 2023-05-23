/// @description Insert description here
// You can write your code in this editor
//card_width=...
//card_height=...
#macro MAXPHAND 5 
handPCount = 0;
xPos = 400;
yPos = 2242;
player_units = 0;
player_units_sprite = 0;
player_races = 0;

willpower = 0;
magic = 0;
gold = 0;
tier1 = 0;
tier2 = 0;
tier3 = 0;
for(i = 0; i < 3; i += 1){
	handp1[i]=0;
}

//Coordinates of player1's power deck
deckp1_x = 1728;
deckp1_y = 2240;

score_player = 0;
//face_up == 1 cards will be face up
face_up = 0;
deckPCount = 0; //Number of cards in deck
deckPoint = 0; //The top of the deck
deck_buffer_x = .4;
deck_buffer_y = .4;
for (i = 0; i < 10; i += 1){
	deckp1[i] = 0;
	handCard[i] = noone;
}

// create the 4 tiers of units using tier 1, 2, 3 and 4 sets objects

scr_initialize_info_units();
scr_init_sprite_array();
scr_init_players_units();
i = 0;
tier1 = instance_create_depth(2144, 1920, -3, obj_tier);
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

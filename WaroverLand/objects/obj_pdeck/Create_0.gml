/// @description Insert description here
// You can write your code in this editor
//player_cards = 0;
//player_cards_sprite = 0;
//scr_init_player_cards();
randomise();
deckp1_x = 2500;
deckp1_y = 2600;
deck_buffer_x = .4;
deck_buffer_y = .4;
player = obj_player;
deck = 0;
for(i = 0; i < 21; i += 1){
	deck[i]=0;
}
if(obj_selected_lord.chosen_lord == 1){
	deckPCount = 21;
}

card_sprite = spr_cardback;
scr_set_cards();
scr_shuffle_decks();
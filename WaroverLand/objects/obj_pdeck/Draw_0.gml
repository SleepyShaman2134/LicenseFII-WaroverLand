/// @description Insert description here
// You can write your code in this editor
draw_self();
for(i = 0; i < deckPCount; i++){
	draw_sprite(card_sprite, -1, deckp1_x+deck_buffer_x*i, deckp1_y-deck_buffer_y*i);
}
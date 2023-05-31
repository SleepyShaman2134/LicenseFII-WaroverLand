/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(100, 200, string(mouse_x) + " " + string(mouse_y));
draw_self();
/*with(player1){
	if(deckp1[i]>0){
			//THIS NEEDS TO BE THE CARD BACK
			//EVENT DECK HAS DIFFERENT NUMBER OF CARDS. MUST PUT IT IN ANOTHER FOR LOOP
			draw_sprite(card_sprite, -1, deckp1_x+deck_buffer_x*i, deckp1_y-deck_buffer_y*i);
			//draw_sprite(card_sprite, -1, deck_ev1_x+deck_buffer_x*i, deck_ev1_y+deck_buffer_y*i);	
	}
}*/
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw(draw){
	if (deck.deckPCount - draw < 0) {
		return;	
	}
	if (handPCount == MAXPHAND){
		gold = gold +3;
		return;
	}
	
	for(i = 0; i < draw; i++){
		deck.deckPCount = deck.deckPCount - 1;
		hand[handPCount++] = deck.deck[deck.deckPCount];
		deck.deck[deck.deckPCount] = 0;
		handCard[handPCount -1] = instance_create_depth(1728, 2000, -3, obj_card);
		with(handCard[handPCount - 1]){
			card_drawn = true;
		 	hand_position = other.handPCount - 1;
			cardNum = other.hand[hand_position];
			
		}
	}
}
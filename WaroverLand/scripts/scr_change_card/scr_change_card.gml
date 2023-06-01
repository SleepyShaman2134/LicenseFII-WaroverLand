// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_card(used_card){
	with(player){
		var temp = hand[other.hand_position];
		var position = other.hand_position;
		deck.deckPCount -= 1;
		hand[other.hand_position] = deck.deck[deck.deckPCount];
		deck.deck[deck.deckPCount] = temp;
		instance_destroy(handCard[other.hand_position]);
		handCard[other.hand_position] = instance_create_depth(1728, 2000, -3, obj_card);
		with(handCard[other.hand_position]){
			card_drawn = true;
			hand_position = position;
			cardNum = other.hand[hand_position];
			uses_per_turn = 1;
		}
		game.card_used = 0;
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drawP(){
	var num= argument0;
	//conditions to not draw a card
	if (deckPCount - num < 0) {
		return;	
	}
	if (handPCount==MAXPHAND){
		return;
	}
	
	for (i = 0; i < num; i += 1){
		handp1[handPCount++] = deckp1[--deckPCount];
		deckp1[deckPCount] = 0;
		
		handCard[handPCount - 1] = instance_create_depth(deckp1_x, deckp1_y, -handPCount -2, obj_card);
		with(handCard[handPCount-1]){
			card_drawn = true;
			hand_position = player.handPCount -1;
			cardNum = player.handp1[hand_position]; 
		}
	}
}
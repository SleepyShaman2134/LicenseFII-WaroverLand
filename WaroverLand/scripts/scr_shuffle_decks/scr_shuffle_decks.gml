// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shuffle_decks(){
	var numShuffle = 100;
	//condition not to shuffle deck
	if (deckPCount == 0){
		return;
	}
	for (i = 0; i < numShuffle; i += 1){
		for (j = 0; j < deckPCount; j += 1){
			var temp_1 = irandom_range(0, deckPCount-1);
			if (deckp1[j] > 0 && deckp1[temp_1] > 0){
				var temp_2 = deckp1[j];
				deckp1[j] = deckp1[temp_1];
				deckp1[temp_1] = temp_2;
			}
		}
	}
}
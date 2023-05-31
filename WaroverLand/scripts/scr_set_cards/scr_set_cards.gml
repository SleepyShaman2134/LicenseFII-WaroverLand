// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_cards(){
	
	for(i = 0; i<3 ; i++){
		for(j = 0; j < 10; j++){
			deck[(i*10)+j] = player.player_cards[j];
		}
	}
}
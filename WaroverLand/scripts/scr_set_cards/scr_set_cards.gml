// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_cards(){
	
	var single = 0, double =0;
	for(i = 0; i< 10; i++){
		single[i] = 0;
		double[i] = 0;
	}
	l=0;
	for(i = 0; i<3 ; i++){
		for(j = 0; j < 10; j++){
			if(single[j] != 1 && player.player_cards[j] == 1){
				deck[/*(i*10)+j*/ l++] = player.player_cards[j];
				single[j]++;
			}
			if(single[j] != 1 && player.player_cards[j] == 7){
				deck[l++] = player.player_cards[j];
				single[j]++;
			}
			
			if(single[j] != 1 && player.player_cards[j] == 8){
				deck[l++] = player.player_cards[j];
				single[j]++;
			}
			
			if(double[j] != 2 && player.player_cards[j] == 6){
				deck[l++] = player.player_cards[j];
				double[j]++;
			}
			
			if(double[j] != 2 && player.player_cards[j] == 9){
				deck[l++] = player.player_cards[j];
				double[j]++;
			}
			
			if(double[j] != 2 && player.player_cards[j] == 10){
				deck[l++] = player.player_cards[j];
				double[j]++;
			}
			
			switch(player.player_cards[j]){
				case 2:
					deck[l++] = player.player_cards[j];
				break;
				case 3:
					deck[l++] = player.player_cards[j];
				break;
				case 4:
					deck[l++] = player.player_cards[j];
				break;
				case 5:
					deck[l++] = player.player_cards[j];
				break;
			}
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tw2(ipos, jpos, tier, gains){
	var counter = 0;
	if(tier == 1){
		game.score2 =game.score2 -1 -gains;
		for(i = 0; i < 3; i++){
			if(game.units1[i][jpos] != noone){
				counter= counter + 1;
			}
		}
		if(counter > 0){
			game.score2 = game.score2 - counter; 
		}
	}
	
	if(tier == 2){
		game.score2 =game.score2 -2 -gains;
		for(i = 0; i < 3; i++){
			if(game.units1[i][jpos] != noone){
				counter= counter + 1;
			}
		}
		if(counter > 0){
			game.score2 -= (2*counter); 
		}
	}
	
	if(tier == 3){
		game.score2 =game.score2 -3 -gains;
		for(i = 0; i < 3; i++){
			if(game.units1[i][jpos] != noone){
				counter= counter + 1;
			}
		}
		if(counter > 0){
			game.score2 -= 2*counter; 
		}
	}
	game.activateability = 1;
}
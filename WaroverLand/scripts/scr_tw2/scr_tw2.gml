// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tw2(ipos, jpos, tier, gains){
	var counter = 0;
	if(tier == 1){
		if((game.score2-gains -1) >= 0){
			game.score2 =game.score2 -1 - gains;
			scr_net_change_score_op(game.score2);
		}
		else{
			game.score2 = 0;
			scr_net_change_score_op(game.score2);
		}
		for(i = 0; i < 3; i++){
			if(game.units1[i][jpos] != noone){
				counter= counter + 1;
			}
		}
		if(counter > 0 && game.score2 - counter >= 0){
			game.score2 = game.score2 - counter; 
			scr_net_change_score_op(game.score2);
		}
		else{
			game.score2 = 0;
			scr_net_change_score_op(game.score2);
		}	
	}
	
	if(tier == 2){
		if((game.score2-gains -2) >= 0){
			game.score2 =game.score2 -2 -gains;
			scr_net_change_score_op(game.score2);
		}
		else{
			game.score2 = 0;
			scr_net_change_score_op(game.score2);
		}
		for(i = 0; i < 3; i++){
			if(game.units1[i][jpos] != noone){
				counter= counter + 1;
			}
		}
		if(counter > 0 && game.score2 - counter >= 0){
			game.score2 -= (2*counter);
			scr_net_change_score_op(game.score2);
		}
		else{
			game.score2 = 0;
			scr_net_change_score_op(game.score2);
		}
	}
	
	if(tier == 3){
		if((game.score2-gains -3) >= 0){
			game.score2 =game.score2 -3 - gains;
			scr_net_change_score_op(game.score2);
		}else{
			game.score2 = 0;
			scr_net_change_score_op(game.score2);
		}
		for(i = 0; i < 3; i++){
			if(game.units1[i][jpos] != noone){
				counter= counter + 1;
			}
		}
		if(counter > 0 && game.score2 -2*counter >= 0){
			game.score2 -= 2*counter;
			scr_net_change_score_op(game.score2);
		}else{
			game.score2 = 0;
			scr_net_change_score_op(game.score2);
		}
	}
	game.activateability = 1;
}
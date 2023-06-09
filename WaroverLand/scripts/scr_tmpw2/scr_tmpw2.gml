// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tmpw2(){
	with(game){
		if(unit_used_tier == 1){
			if(score2 - unit_valuegp - 2 >= 0){
				score2 = score2 - unit_valuegp - 2;
				scr_net_change_score_op(score2);
			}else{
				score2 = 0;
				scr_net_change_score_op(score2);
			}
			if(debuff_7 == 0){
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
			scr_net_change_score(score1);
		}
		if(unit_used_tier == 2){
			if( score2 - unit_valuegp - 3 >= 0){
				score2 = score2 - unit_valuegp - 3;
				scr_net_change_score_op(score2);
			}else{
				score2 = 0;
				scr_net_change_score_op(score2);
			}
			if(debuff_7 == 0){
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
			scr_net_change_score(score1);
		}
		if(unit_used_tier == 3){
			if(score2 - unit_valuegp - 4 >= 0){
				score2 = score2 - unit_valuegp - 4;
				scr_net_change_score_op(score2);
			}else{
				score2 = 0;
				scr_net_change_score_op(score2);
			}
			if(debuff_7 == 0){
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
			scr_net_change_score(score1);
		}
	}
	game.activateability = 1;
}
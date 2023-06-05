// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tmpw3(){
	if(game.trumpet_turn == 0){
		if(game.used_unit_i == 3 && game.debuff_7 == 0){
			game.score1 +=  5;
			scr_net_change_score(game.score1);
		}
		with(game){
			if(unit_used_tier == 1){
				if(score2 - unit_valuegp - 1 >= 0){
					score2 = score2 - unit_valuegp - 1;
					scr_net_change_score_op(score2);
				}else{
					score2 = 0;
					scr_net_change_score_op(score2);
				}
				other.player.willpower += 1;
				scr_net_change_mana(other.player.willpower);
			}
		
			if(unit_used_tier == 2){
				if(score2 - unit_valuegp - 2 >= 0){
					score2 = score2 - unit_valuegp - 2;
					scr_net_change_score_op(score2);
				}else{
					score2 = 0;
					scr_net_change_score_op(score2);
				}
				other.player.willpower += 2;
				scr_net_change_mana(other.player.willpower);
			}
			if(unit_used_tier == 3){
				if(score2 - unit_valuegp - 3 >= 0){
					score2 = score2 - unit_valuegp - 3;
					scr_net_change_score_op(score2);
				}else{
					score2 = 0;
					scr_net_change_score_op(score2);
				}
				other.player.willpower += 3;
				scr_net_change_mana(other.player.willpower);
			}
		}
		game.activateability = 1;
		game.trumpet_turn++;
	}
}
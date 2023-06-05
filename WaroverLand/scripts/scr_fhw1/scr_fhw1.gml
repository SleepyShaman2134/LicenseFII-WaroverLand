// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fhw1(vari, varj, unit_tier, points){
	var ok = 0;
	if(unit_tier == 1){
		if(game.debuff_7 == 0)	{
			game.score1 += points + 2;
			scr_net_change_score(game.score1);
		}
		if(varj == 4  && ok == 0){
			if(game.units1[vari][3] != noone && game.debuff_7 == 0){
				game.score1 += 1;
				scr_net_change_score(game.score1);
			}
			ok = 1;
		}
		if(varj == 0 && ok == 0){
			if(game.units1[vari][1] != noone && game.debuff_7 == 0){
				game.score1 += 1;
				scr_net_change_score(game.score1);
			}
			ok = 1;
		}
		if(ok == 0){
			if(game.units1[vari][varj-1] != noone && game.debuff_7 == 0){
				game.score1 += 1;
				scr_net_change_score(game.score1);
			}
				
			if(game.units1[vari][varj+1] != noone && game.debuff_7 == 0){
				game.score1 += 1;
				scr_net_change_score(game.score1);
			}
		}
	}
		
	if(unit_tier == 2){
		if(game.debuff_7 == 0){
			game.score1 += points + 4;
			scr_net_change_score(game.score1);
		}
		if(varj == 4){
			if(game.units1[vari][3] != noone && game.debuff_7 == 0){
				game.score1 += 2;
				scr_net_change_score(game.score1);
			}
			ok = 1;
		}
		if(varj == 0){
			if(game.units1[vari][1] != noone && game.debuff_7 == 0){
				game.game.score1 += 2;
				scr_net_change_score(game.score1);
			}
			ok = 1;
		}
		if(ok == 0){
			if(game.units1[vari][varj-1] != noone && game.debuff_7 == 0){
				game.score1 += 2;
				scr_net_change_score(game.score1);
			}
				
			if(game.units1[vari][varj+1] != noone && game.debuff_7 == 0){
				game.score1 += 2;
				scr_net_change_score(game.score1);
			}
		}
	}
		
	if(unit_tier == 3){
		if(game.debuff_7 == 0){
			game.score1 += points + 6;
			scr_net_change_score(game.score1);
		}
		if(varj == 4){
			if(game.units1[vari][3] != noone && game.debuff_7 == 0){
				game.score1 += 3;
				scr_net_change_score(game.score1);
			}
			ok = 1;
		}
		if(varj == 0){
			if(game.units1[vari][1] != noone && game.debuff_7 == 0){
				game.score1 += 3;
				scr_net_change_score(game.score1);
			}
			ok = 1;
		}
		if(ok == 0){
			if(game.units1[vari][varj-1] != noone && game.debuff_7 == 0){
				game.score1 += 3;
				scr_net_change_score(game.score1);
			}
				
			if(game.units1[vari][varj+1] != noone && game.debuff_7 == 0){
				game.score1 += 3;
				scr_net_change_score(game.score1);
			}
		}
	}
	game.activateability =1;
}
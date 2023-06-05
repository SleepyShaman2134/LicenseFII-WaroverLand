// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tw3(){
	if(game.used_unit.unit_turn3 == 0){
		if(game.used_unit_i == 3){
			if(game.debuff_7 == 0){
				game.score1 += 5;
				scr_net_change_score(game.score1);
			}
			if(game.unit_valuegp >= game.score2){
				game.score2 -= game.unit_valuegp;
				scr_net_change_score_op(game.score2);
			}else{
				game.score2 = 0;
				scr_net_change_score_op(game.score2);
			}
		}
		else{
			if(game.debuff_7 == 0){
				if(game.unit_valuegp >= game.score2){
					game.score2 -= game.unit_valuegp;
					scr_net_change_score_op(game.score2);
				}else{
					game.score2 = 0;
					scr_net_change_score_op(game.score2);
				}
			}
		}
		if(game.unit_used_tier == 1){
			//game.score2 -= 1;
			blocked = 1;
			scr_net_set_unit_debuff(ipos, jpos, 0, "blocked");
			if(ipos > 0){
				if(game.units1[ipos-1][jpos] == noone){
					with(game.spaces[ipos][jpos]){
						isunit = 0;
					}
					game.units1[ipos-1][jpos] = game.units1[ipos][jpos];
					game.units1[ipos][jpos]= noone;
					scr_net_change_position(ipos, jpos, ipos - 1, jpos);
					ipos = ipos - 1;
					with(game.spaces[ipos][jpos]){
						game.used_unit_x = varx;
						game.used_unit_y = vary;
						isunit = 1;
					}
					with(game.units1[ipos][jpos]){
						x = game.used_unit_x;
						y = game.used_unit_y;
						xpos_unit = game.used_unit_x;
						ypos_unit = game.used_unit_y;
					}
					
				}
			}
		}
	
		if(game.unit_used_tier == 2){
			//game.score2 -= 1;
			blocked = 1;
			scr_net_set_unit_debuff(ipos, jpos, 0, "blocked");
			if(ipos > 0){
				if(game.units1[ipos-1][jpos] == noone){
					with(game.spaces[vari][varj]){
						isunit = 0;
					}
					game.units1[ipos-1][jpos] = game.units1[ipos][jpos];
					game.units1[ipos][jpos]= noone;
					scr_net_change_position(ipos, jpos, ipos - 1, jpos);
					ipos = ipos - 1;
					with(game.spaces[ipos][jpos]){
						isunit = 1;
						game.used_unit_x = varx;
						game.used_unit_y = vary;
					}
					with(game.units1[ipos][jpos]){
						x = game.used_unit_x;
						y = game.used_unit_y;
						xpos_unit = game.used_unit_x;
						ypos_unit = game.used_unit_y;
					}
				}
			}
		}
	
		if(game.unit_used_tier == 3){
			//game.score2 -= 1;
			blocked = 1;
			scr_net_set_unit_debuff(ipos, jpos, 0, "blocked");
			if(ipos > 0){
				if(game.units1[ipos-1][jpos] == noone){
					with(game.spaces[vari][varj]){
						isunit = 0;
					}
					game.units1[ipos-1][jpos] = game.units1[ipos][jpos];
					game.units1[ipos][jpos]= noone;
					scr_net_change_position(ipos, jpos, ipos - 1, jpos);
					ipos = ipos - 1;
					with(game.spaces[ipos][jpos]){
						isunit = 1;
						game.used_unit_x = varx;
						game.used_unit_y = vary;
					}
					with(game.units1[ipos][jpos]){
						x = game.used_unit_x;
						y = game.used_unit_y;
						xpos_unit = game.used_unit_x;
						ypos_unit = game.used_unit_y;
					}
				}
			}
		}
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn3++;
	}
}
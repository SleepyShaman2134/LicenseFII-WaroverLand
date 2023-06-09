// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trw3(){
	if(game.trombone_turn == 0){
		if(game.used_unit_i == 3 && game.debuff_7 == 0){
			game.score1 += 5;
			scr_net_change_score(game.score1);
		}
		with(game){
			if(debuff_7 == 0){
				score1 += unit_valuegp;
				scr_net_change_score(score1);
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
			if(unit_used_tier == 1 && debuff_7 == 0){
				score1 += 1;
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
		
			if(unit_used_tier == 2 && debuff_7 == 0){
				score1 += 2;
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
		
			if(unit_used_tier == 3 && debuff_7 == 0){
				score1 += 3;
				with(spaces[used_unit_i][used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(score1);
			}
		}
		with(game.spaces[game.target1_ipos][game.target1_jpos]){
			isunit = 0;
		}
		with(game.units1[game.target1_ipos][game.target1_jpos]){
				x = other.varx;
				y = other.vary;
			}
			game.units1[vari][varj] = game.target1;
			game.units1[game.target1_ipos][game.target1_jpos] = noone;
			//game.target1_xpos = varx;
			//game.target1_ypos = vary;
			with(game.spaces[vari][varj]){
			isunit = 1;
		}
		with(game.units1[vari][varj]){
			ipos = other.vari;
			jpos = other.varj;
			xpos_unit = other.varx;
			ypos_unit = other.vary;
			for(j = 0; j < 4; j++){
				if(game.units1[ipos][j] != noone && j!= jpos){
					player.gold++;
					scr_net_change_gold(player.gold);
				}
			}
		}
		scr_net_change_position(game.target1_ipos, game.target1_jpos, vari, varj)
		game.activateability = 1;
		game.trombone_turn++;
	}
	
}
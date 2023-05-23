// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trw3(){
	if(game.trombone_turn == 0){
		if(game.used_unit_i == 3){
			game.score1 += 5;
		}
		with(game){
			score1 += unit_valuegp;
			if(unit_used_tier == 1){
				score1 += 1;
			}
		
			if(unit_used_tier == 2){
				score1 += 2;
			}
		
			if(unit_used_tier == 3){
				score1 += 3;
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
			game.target1_xpos = varx;
			game.target1_ypos = vary;
			with(game.spaces[vari][varj]){
			isunit = 1;
		}
			with(game.units1[vari][varj]){
				ipos = other.vari;
				jpos = other.varj;
				xpos_unit = other.varx;
				ypos_unit = other.vary;
			}
		game.activateability = 1;
		game.trombone_turn++;
	}
	
}
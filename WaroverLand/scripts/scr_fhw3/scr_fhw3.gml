// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fhw3(vari, varj, unit_tier, points){
	if(game.used_unit_i == 3 && game.debuff_7 == 0){
		game.score1 += points + 5;
		scr_net_change_score(game.score1);
	}
	else{
		if(game.debuff_7 == 0){
			game.score1 += points;
			scr_net_change_score(game.score1);
		}
	}
	if(unit_tier == 1){
		with(game.spaces[game.used_unit_i][game.used_unit_j]){
			isunit = 0;
		}
		with(game.units1[game.used_unit_i][game.used_unit_j]){
			x = other.varx;
			y = other.vary;
		}
		game.units1[vari][varj] = game.used_unit;
		game.units1[game.used_unit_i][game.used_unit_j] = noone;
		game.used_unit_x = varx;
		game.used_unit_y = vary;
		with(game.units1[vari][varj]){
			ipos = other.vari;
			jpos = other.varj;
			xpos_unit = other.varx;
			ypos_unit = other.vary;
		}
		for(j = 0; j < 5; j++){
			if(j != varj && game.units1[vari][j] != noone && game.debuff_7 == 0){
				game.score1 +=1;
				scr_net_change_score(game.score1);
			}
		}
	}
	if(unit_tier == 2){
		with(game.units1[game.used_unit_i][game.used_unit_j]){
			x = other.varx;
			y = other.vary;
		}
		game.units1[vari][varj] = game.used_unit;
		game.units1[game.used_unit_i][game.used_unit_j] = noone;
		game.used_unit_x = varx;
		game.used_unit_y = vary;
		with(game.units1[vari][varj]){
			ipos = other.vari;
			jpos = other.varj;
			xpos_unit = other.varx;
			ypos_unit = other.vary;
		}
		for(j = 0; j < 5; j++){
			if(j != varj && game.units1[vari][j] != noone && game.debuff_7 == 0){
				game.score1 +=2;
				scr_net_change_score(game.score1);
			}
		}
	}
	if(unit_tier == 3){
		with(game.units1[game.used_unit_i][game.used_unit_j]){
			x = other.varx;
			y = other.vary;
		}
		game.units1[vari][varj] = game.used_unit;
		game.units1[game.used_unit_i][game.used_unit_j] = noone;
		game.used_unit_x = varx;
		game.used_unit_y = vary;
		with(game.units1[vari][varj]){
			ipos = other.vari;
			jpos = other.varj;
			xpos_unit = other.varx;
			ypos_unit = other.vary;
		}
		for(j = 0; j < 5; j++){
			if(j != varj && game.units1[vari][j] != noone && game.debuff_7 == 0){
				game.score1 +=3;
				scr_net_change_score(game.score1);
			}
		}
	}
	scr_net_change_position(game.used_unit_i, game.used_unit_j, vari, varj);
	isunit = 1;
	game.activateability = 1;
}
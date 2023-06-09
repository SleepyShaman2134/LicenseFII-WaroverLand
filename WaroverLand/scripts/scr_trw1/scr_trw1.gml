// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trw1(){
	if(game.used_unit.unit_turn1 == 0){
		if(unit_tier == 1){
			if(game.debuff_7 == 0){
				game.score1 += game.unit_valuegp +1;
				scr_net_change_score(game.score1);
				with(game.spaces[game.used_unit_i][game.used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(game.score1);
			}
			player.gold += 1;
			scr_net_change_gold(player.gold);
		}
		if(unit_tier == 2){
			if(game.debuff_7 == 0){
				game.score1 +=  game.unit_valuegp +2;
				scr_net_change_score(game.score1);
				with(game.spaces[game.used_unit_i][game.used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(game.score1);
			}
			player.gold += 2;
			scr_net_change_gold(player.gold);
		}
		if(unit_tier == 3){
			if(game.debuff_7 == 0){
				game.score1 +=  game.unit_valuegp + 3;
				scr_net_change_score(game.score1);
				with(game.spaces[game.used_unit_i][game.used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(game.score1);
			}
			player.gold += 3;
			scr_net_change_gold(player.gold);
		}
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn1++;
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trw2(vari, varj, unit_tier, unit_rpoints){
	if(game.used_unit.unit_turn2 == 0){
		if(unit_tier == 1){
			if(game.debuff_7 == 0){
				game.score1 += unit_rpoints + 1;
				scr_net_change_score(game.score1);
				with(game.spaces[game.used_unit_i][game.used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(game.score1);
			}
			if(player.gold >= 10)
			{
				player.gold -=10;
				scr_net_change_gold(player.gold);
				if(player.discordia - 1 < 0){
					player.discordia = 0;
				}else{
					player.discordia -= 1;
					scr_net_change_discordia(player.discordia);
				}
			}
		}
		if(unit_tier == 2){
			if(game.debuff_7 == 0){
				game.score1 += unit_rpoints + 2;
				scr_net_change_score(game.score1);
				with(game.spaces[game.used_unit_i][game.used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(game.score1);
			}
			if(player.gold >= 9)
			{
				player.gold -=9;
				scr_net_change_gold(player.gold);
				if(player.discordia - 1 < 0){
					player.discordia = 0;
				}else{
					player.discordia -= 1;
					scr_net_change_discordia(player.discordia);
				}
			}
		}
		if(unit_tier == 3){
			if(game.debuff_7 == 0){
				game.score1 += unit_rpoints + 3;
				scr_net_change_score(game.score1);
				with(game.spaces[game.used_unit_i][game.used_unit_j]){
					game.score1 += structure;
				}
				scr_net_change_score(game.score1);
			}
			if(player.gold >= 8)
			{
				player.gold -= 8;
				scr_net_change_gold(player.gold);
				if(player.discordia - 1 < 0){
					player.discordia = 0;
				}else{
					player.discordia -= 1;
					scr_net_change_discordia(player.discordia);
				}
			}
		}
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn2++;
	}
}
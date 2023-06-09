// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fhw2(){
	if(game.used_unit.unit_turn2 == 0){
		if(game.debuff_7 == 0){
			game.score1 += 1;
			with(game.spaces[game.used_unit_i][game.used_unit_j]){
				game.score1 += structure;
			}
			scr_net_change_score(game.score1);
		}
		rvigor++;
		scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor);
		game.activateability = 1;
	}
	with(game.used_unit){
		unit_turn2++;
	}
	
}
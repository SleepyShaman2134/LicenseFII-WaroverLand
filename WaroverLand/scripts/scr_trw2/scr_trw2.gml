// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trw2(vari, varj, unit_tier, unit_rpoints){
	if(game.used_unit.unit_turn2 == 0){
		if(unit_tier == 1){
			game.score1 += unit_rpoints + 1;
		}
		if(unit_tier == 2){
			game.score1 += unit_rpoints + 2;
		}
		if(unit_tier == 3){
			game.score1 += unit_rpoints + 3;
		}
		with(player){
			scr_drawP(1);
		}
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn2++;
	}
}
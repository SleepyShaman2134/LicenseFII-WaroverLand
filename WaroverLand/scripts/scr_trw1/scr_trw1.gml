// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trw1(){
	if(game.used_unit.unit_turn1 == 0){
		if(unit_tier == 1){
			game.score1 += game.unit_valuegp +1;
			player.gold += 1;
		}
		if(unit_tier == 2){
			game.score1 +=  game.unit_valuegp +2;
			player.gold += 2;
		}
		if(unit_tier == 3){
			game.score1 +=  game.unit_valuegp + 3;
			player.gold += 3;
		}
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn1++;
	}
}
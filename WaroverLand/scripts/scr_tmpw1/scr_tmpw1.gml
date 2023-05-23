// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tmpw1(){
	if(game.used_unit.unit_turn1 == 0){
		blocked = 1;
		with(game){
			if(unit_used_tier == 1){
				score2 -= unit_valuegp - 3;
			}
			if(unit_used_tier == 2){
				score2 -= unit_valuegp - 4;
			}
			if(unit_used_tier == 3){
				score2 -= unit_valuegp - 5;
			}
		}
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn1++;
	}
}
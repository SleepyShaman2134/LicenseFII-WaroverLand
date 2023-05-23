// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tmpw2(){
	with(game){
		if(unit_used_tier == 1){
			score1 -= unit_valuegp - 2;
		}
		if(unit_used_tier == 2){
			score1 -= unit_valuegp - 3;
		}
		if(unit_used_tier == 3){
			score1 -= unit_valuegp - 4;
		}
	}
	game.activateability = 1;
}
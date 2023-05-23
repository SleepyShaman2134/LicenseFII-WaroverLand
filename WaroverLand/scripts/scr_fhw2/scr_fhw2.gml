// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fhw2(){
	if(game.used_unit.unit_turn2 == 0){
		game.score1 += 1;
		rvigor++;
		game.activateability = 1;
	}
	with(game.used_unit){
		unit_turn2++;
	}
	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tmpw3(){
	if(game.trumpet_turn == 0){
		if(game.used_unit_i == 3){
			game.score1 +=  5;
		}
		with(game){
			score2 -= unit_valuegp;
			if(unit_used_tier == 1){
				score2 -= 1;
				other.player.willpower += 1;
			}
		
			if(unit_used_tier == 2){
				score2 -= 2;
				other.player.willpower += 2;
			}
			if(unit_used_tier == 3){
				score2 -= 3
				other.player.willpower += 3;
			}
		}
		game.activateability = 1;
		game.trumpet_turn++;
	}
}
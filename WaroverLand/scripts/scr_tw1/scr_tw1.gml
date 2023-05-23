// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tw1(){
	if(game.used_unit.unit_turn1 == 0){
		if(game.unit_used_tier == 1){
			if((game.score2-game.unit_valuegp -2) >= 0){
				game.score2 = game.score2 -game.unit_valuegp -2;
			}else{
				game.score2 = 0;
				//NEED TO CHECK WHAT TO DO (GIVING DISCORDIA IS NOT GOOD! MAYBE A DEBUFF TO THOSE WHO ARE
				//ALREADY ON THE FIELD, NEED RETHINKING)
			}
			chance = random_range(rvigor, 5);
			if(chance < 3.5){
				rgains-- ;
				tuba_debuff = 1;
			}
		}
	
		if(game.unit_used_tier == 2){
			if(game.score2-game.unit_valuegp -3 >= 0){
				game.score2 = game.score2 -game.unit_valuegp -3;
			}else{
				game.score2 = 0;
				//NEED TO CHECK WHAT TO DO (GIVING DISCORDIA IS NOT GOOD! MAYBE A DEBUFF TO THOSE WHO ARE
				//ALREADY ON THE FIELD, NEED RETHINKING)
			}
			chance = random_range(rvigor, 5);
			if(chance <  4){
				rgains = rgains - 2;
				tuba_debuff = 2;
			}
		}
	
		if(game.unit_used_tier == 3){
			if(game.score2-game.unit_valuegp -4 >= 0){
				game.score2 = game.score2 -game.unit_valuegp -4;
			}else{
				game.score2 = 0;
				//NEED TO CHECK WHAT TO DO (GIVING DISCORDIA IS NOT GOOD! MAYBE A DEBUFF TO THOSE WHO ARE
				//ALREADY ON THE FIELD, NEED RETHINKING)
			}
			chance = random_range(rvigor, 5);
			if(chance <  4.5){
				rgains = rgains -3;
				tuba_debuff = 3;
			}
		}
	
		game.activateability = 1;
	}
	
	with(game.used_unit){
		unit_turn1++;
	}

}
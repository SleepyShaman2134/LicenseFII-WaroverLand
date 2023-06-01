// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_5(){
	with(game){
		switch (meter){
		 case 1:
			obj_player.willpower -= meter;
			other.structure = other.structure - meter;
			if(other.isunit == 1){
				with(units1[other.vari][other.varj]){
					rgains -= 1;
				}
			}
		 break;
		 
		 case 2:
			obj_player.willpower -= meter;
			other.structure -= meter;
			if(other.isunit == 1){
				with(units1[other.vari][other.varj]){
					rgains -= 2;
				}
			}
		break;
		
		case 3:
			obj_player.willpower -= meter;
			other.structure -= meter;
			if(other.isunit == 1){
				with(units1[other.vari][other.varj]){
					rgains -= 3;
				}
			}
		break;
		
		default:
		show_message("SOMETHING WENT WRONG");
		}
	}
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetstructure = 0;
	game.meter = 0;
	game.card_used.uses_per_turn -= 1;
}
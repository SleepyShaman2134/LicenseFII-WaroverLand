// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_5(){
	with(game){
		switch (meter){
		 case 1:
			obj_player.willpower -= meter;
			scr_net_change_mana(obj_player.willpower);
			other.structure = other.structure - meter;
			scr_net_change_structure(vari, varj,  other.structure)
			if(other.isunit == 1){
				with(units1[other.vari][other.varj]){
					rgains -= 1;
					scr_net_change_stats(ipos, jpos, rgains, gain, rvigor, vigor);
				}
			}
		 break;
		 
		 case 2:
			obj_player.willpower -= meter;
			scr_net_change_mana( obj_player.willpower);
			other.structure -= meter;
			scr_net_change_structure(vari, varj,  other.structure)
			if(other.isunit == 1){
				with(units1[other.vari][other.varj]){
					rgains -= 2;
					scr_net_change_stats(ipos, jpos, rgains, gain, rvigor, vigor);
				}
			}
		break;
		
		case 3:
			obj_player.willpower -= meter;
			scr_net_change_mana( obj_player.willpower);
			other.structure -= meter;
			scr_net_change_structure(vari, varj,  other.structure)
			if(other.isunit == 1){
				with(units1[other.vari][other.varj]){
					rgains -= 3;
					scr_net_change_stats(ipos, jpos, rgains, gain, rvigor, vigor);
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
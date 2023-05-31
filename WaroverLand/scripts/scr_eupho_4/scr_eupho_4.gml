// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_4(){
	with(game.spaces[game.targetuniti][game.targetunitj]){
			isunit = 0;
		}
		
	switch(game.meter){
		case 1:
			obj_player.willpower = obj_player.willpower - 1;
			if((game.targetuniti + 1) == vari){
				game.targetunit.rvigor =game.targetunit.rvigor + 1;
			}
			if((game.targetuniti - 1) == vari){
				game.targetunit.rgains += 1;
			}
		break;
		
		case 2:
			obj_player.willpower = obj_player.willpower - 2;
			if((game.targetuniti + 1) == vari){
				game.targetunit.rvigor =game.targetunit.rvigor + 2;
			}
			if((game.targetuniti - 1) == vari){
				game.targetunit.rgains += 2;
			}
		break;
		
		case 3:
			obj_player.willpower = obj_player.willpower - 3;
			if((game.targetuniti + 1) == vari){
				game.targetunit.rvigor =game.targetunit.rvigor + 3;
			}
			if((game.targetuniti - 1) == vari){
				game.targetunit.rgains += 3;
			}
		break;
	}
	with(game.units1[game.targetuniti][game.targetunitj]){
			x = other.varx;
			y = other.vary;
		}
		game.units1[vari][varj] = game.targetunit;
		game.units1[game.targetuniti][game.targetunitj] = noone;
		game.targetunitx = varx;
		game.targetunity = vary;
		with(game.spaces[vari][varj]){
		isunit = 1;
	}
	with(game.units1[vari][varj]){
		ipos = other.vari;
		jpos = other.varj;
		xpos_unit = other.varx;
		ypos_unit = other.vary;
		}
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetstructure = 0;
	game.meter = 0;
}
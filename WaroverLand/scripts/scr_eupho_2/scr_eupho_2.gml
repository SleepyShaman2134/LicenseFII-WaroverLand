// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_2(){
	with(game.spaces[game.targetuniti][game.targetunitj]){
			isunit = 0;
			if(game.meter == 1){
				structure = structure + 1;
				scr_net_change_structure(vari, varj, structure);
				player.willpower = player.willpower - 1;
				scr_net_change_mana(player.willpower);
			}
			if(game.meter == 2){
				structure = structure + 2;
				scr_net_change_structure(vari, varj, structure);
				player.willpower = player.willpower - 2;
				scr_net_change_mana(player.willpower);
			}
			if(game.meter == 3){
				structure = structure + 3;
				scr_net_change_structure(vari, varj, structure);
				player.willpower = player.willpower - 3;
				scr_net_change_mana(player.willpower);
			}
		}
	with(game.units1[game.targetuniti][game.targetunitj]){
			x = other.varx;
			y = other.vary;
	}
	game.units1[vari][varj] = game.targetunit;
	game.units1[game.targetuniti][game.targetunitj] = noone;
	game.targetunitx = varx;
	game.targetunity = vary;
	scr_net_change_position(ipos, jpos, vari, varj);
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
	game.card_used.uses_per_turn -= 1;
}
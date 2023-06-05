// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_4(){
	with(game.spaces[game.targetuniti][game.targetunitj]){
			isunit = 0;
		}
		
	switch(game.meter){
		case 1:
			obj_player.willpower = obj_player.willpower - 1;
			scr_net_change_mana(player.willpower)
			if((game.targetuniti + 1) == vari){
				game.targetunit.rvigor =game.targetunit.rvigor + 1;
				with(game)
					scr_net_change_stats(targetuniti, targetunitj, targetunit.rgains, targetunit.gains, targetunit.rvigor, targetunit.vigor);
			}
			if((game.targetuniti - 1) == vari){
				game.targetunit.rgains += 1;
				with(game.targetunit)
					scr_net_change_stats(targetuniti, targetunitj, targetunit.rgains, targetunit.gains, targetunit.rvigor, targetunit.vigor);
			}
		break;
		
		case 2:
			obj_player.willpower = obj_player.willpower - 2;
			scr_net_change_mana(player.willpower)
			if((game.targetuniti + 1) == vari){
				game.targetunit.rvigor =game.targetunit.rvigor + 2;
				with(game.targetunit)
					scr_net_change_stats(targetuniti, targetunitj, targetunit.rgains, targetunit.gains, targetunit.rvigor, targetunit.vigor);
			}
			if((game.targetuniti - 1) == vari){
				game.targetunit.rgains += 2;
				with(game)
					scr_net_change_stats(targetuniti, targetunitj, targetunit.rgains, targetunit.gains, targetunit.rvigor, targetunit.vigor);
			}
		break;
		
		case 3:
			obj_player.willpower = obj_player.willpower - 3;
			scr_net_change_mana(player.willpower)
			if((game.targetuniti + 1) == vari){
				game.targetunit.rvigor =game.targetunit.rvigor + 3;
				with(game)
					scr_net_change_stats(targetuniti, targetunitj, targetunit.rgains, targetunit.gains, targetunit.rvigor, targetunit.vigor);
			}
			if((game.targetuniti - 1) == vari){
				game.targetunit.rgains += 3;
				with(game)
				scr_net_change_stats(targetuniti, targetunitj, targetunit.rgains, targetunit.gains, targetunit.rvigor, targetunit.vigor);
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
	scr_net_change_position(game.targetuniti, game.targetunitj, vari, varj);
	with(game.units1[vari][varj]){
		ipos = other.vari;
		jpos = other.varj;
		xpos_unit = other.varx;
		ypos_unit = other.vary;
		}
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetuniti = 0;
	game.targetunitj = 0;
	game.targetstructure = 0;
	game.meter = 0;
	game.card_used.uses_per_turn -= 1;
}
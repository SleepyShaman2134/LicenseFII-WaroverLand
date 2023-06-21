// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_3(){
	if(game.meter == 1){
		player.willpower = player.willpower - 2;
		scr_net_change_mana(player.willpower);
		game.units1[ipos][jpos].rgains += 2;
	}
	if(game.meter == 2){
		player.willpower = player.willpower - 3;
		scr_net_change_mana(player.willpower);
		game.units1[ipos][jpos].rgains += 3;
	}
	if(game.meter == 3){
		player.willpower = player.willpower - 4;
		scr_net_change_mana(player.willpower);
		game.units1[ipos][jpos].rgains += 4;
		
	}
	scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor);
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetstructure = 0;
	//game.meter = 0;
	game.card_used.uses_per_turn = 0;
	game.affect_tile = 0;
}
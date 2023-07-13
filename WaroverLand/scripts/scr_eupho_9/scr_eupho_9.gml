// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_9(){
	for(j = 0; j < 5; j++){
		switch (game.meter){
			case 1:
				player.willpower -= 1;
				scr_net_change_mana(player.willpower);
				for(j = 0; j< 5; j++){
					if(game.units1[vari][j] != noone){
						game.units1[vari][j].rgains += 1;
						with(game.units1[vari][j]){
							scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor);
						}
					}
				}
			break;
			
			case 2:
			case 3:
				player.willpower -= 2;
				scr_net_change_mana(player.willpower);
				for(j = 0; j< 5; j++){
					if(game.units1[vari][j] != noone){
						game.units1[vari][j].rgains += 2;
						with(game.units1[vari][j]){
							scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor);
						}
					}
				}
			break;
		}
		game.activate_card = 0;
		game.targetunit = 0;
		game.targetstructure = 0;
		//game.meter = 0;
		game.card_used.uses_per_turn = 0;
		game.affect_tile = 0;
	}
}
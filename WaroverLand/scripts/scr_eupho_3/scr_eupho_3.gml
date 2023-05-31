// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eupho_3(){
	if(game.meter == 1){
		player.willpower = player.willpower - 2;
		game.units1[vari][varj].gains += 2;
	}
	if(game.meter == 2){
		player.willpower = player.willpower - 3;
		game.units1[vari][varj].gains += 3;
	}
	if(game.meter == 3){
		player.willpower = player.willpower - 4;
		game.units1[vari][varj].gains += 4;
	}
		 
}
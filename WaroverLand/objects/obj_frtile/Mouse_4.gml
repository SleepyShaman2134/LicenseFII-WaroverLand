/// @description Insert description here
// You can write your code in this editor

if(game.activate_card == 2 && isunit == 0 && game.targetunit == 0){
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetstructure = 0;
//game.meter = 0;
}
	
if(game.activate_card == 3 && (vari < 3 || isunit == 0) && game.targetunit == 0){
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetstructure = 0;
	//game.meter = 0;
}
	
if(game.activate_card == 4 && (vari < 3 || isunit == 0) && game.targetunit == 0){
	game.activate_card = 0;
	game.targetunit = 0;
	game.targetstructure = 0;
	//game.meter = 0;
}

switch (game.affect_tile){
	case "Honourable gift":
		if(game.targetunit != noone && game.targetstructure == 0 &&
		isunit == 0 && vari > 2 &&
		(((game.targetuniti +1) == vari || (game.targetuniti - 1) == vari ||
		game.targetuniti == vari) && 
		((game.targetunitj +1) == varj || (game.targetunitj - 1) == varj) ||
		game.targetunitj == varj)){
			scr_eupho_2();		
		}/*else{
			game.activate_card = 0;
			game.targetunit = 0;
			game.targetstructure = 0;
			game.meter = 0;
		}*/
	break;
	
	case "Brasoveanca":
		if(game.targetunit != noone && game.targetstructure == 0 &&
		isunit == 0 && vari > 2 && ((game.targetuniti +1) == vari ||
		(game.targetuniti - 1) == vari) &&
		game.targetunitj == varj){
			scr_eupho_4();		
		}
		if(isunit != 0 || vari < 3){
			game.activate_card = 0;
			game.targetunit = 0;
			game.targetuniti = 0;
			game.targetunitj = 0;
			game.targetunitx = 0;
			game.targetunity = 0;
			game.targetstructure = 0;
			//game.meter = 0;
		}
	break;
	
	case "Demoralizing strike":
		if(vari < 3){
			scr_eupho_5();		
		}/*else{
			game.activate_card = 0;
			game.targetunit = 0;
			game.targetstructure = 0;
			game.meter = 0;
		}*/
	break;
	
	case "Roaring valor":
		if(vari > 2){
			scr_eupho_9();
		}
	break;
}



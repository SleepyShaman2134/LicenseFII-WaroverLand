// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_players_units(lord_sprite){
	switch(lord_sprite){
		case spr_euphonim:
			i = 0;
			player_units[i] = 1;
			player_races[i] = 1;
			player_units_sprite[i++] = spr_frenchhorn;
			player_units[i] = 2;
			player_races[i] = 1;
			player_units_sprite[i++] = spr_tuba;
			player_units[i] = 3;
			player_races[i] = 1;
			player_units_sprite[i++] = spr_trombone;
			player_units[i] = 4;
			player_races[i] = 1;
			player_units_sprite[i++] = spr_trumpet;
		break;
		
	}
	/*j = 0;
	for(i = 0; i < 4; i++){
		if(player_units_sprite[i] == Spr_FrenchhornWarrior || player_units_sprite[i] == Spr_TubaWarrior ||
		player_units_sprite[i] ==  spr_trombone || player_units_sprite[i] == spr_trumpet){ 
			player_races[j++] = 1;
		}
	}*/
	/*for(i = 0; i < 4; i++){
		player_units[i] = i+1;
		player_units_sprite[i] = "get from client";
	}*/
}
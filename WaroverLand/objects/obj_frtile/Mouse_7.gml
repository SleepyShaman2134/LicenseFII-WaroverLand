/// @description Insert description here
// You can write your code in this editor
if(obj_endturn.turn == 1)
	if(/*vari>2 &&*/ player.tier1.selected == true &&  game.gametier == 1 && isunit == 0 && player.gold >= 3){
		scr_set_unit(x, y);
		player.gold = player.gold - 3;
		game.gametier = 0;
	}

	if(/*vari>2 &&*/ player.tier2.selected == true && game.gametier == 2 && isunit == 0  && player.gold >= 5){
		scr_set_unit(x, y);
		player.gold = player.gold - 5;
		game.gametier = 0;
	}

	if(/*vari>2 &&*/ player.tier3.selected == true && game.gametier == 3 && isunit == 0  && player.gold >= 8){
		scr_set_unit(x, y);
		player.gold = player.gold - 8;
		game.gametier = 0;
	}

	if(mouse_check_button_released(mb_left) && game.abilitytrigger == 1 && isunit == 0 &&
	game.used_unit_i < vari && (game.used_unit_i+1) == vari && game.sprite_used == spr_frenchhorn){
		game.abilitytrigger = 0;
		scr_fhw3(vari, varj, game.unit_used_tier, game.unit_valuegp);
		//trying = 1;
		game.button_used = 0;
	}

	if(mouse_check_button_released(mb_left) && game.abilitytrigger == 1 &&
	game.target1_ipos > vari && (game.target1_ipos-1) == vari && vari > 2 && 
	game.sprite_used == spr_trombone && isunit == 0 && 
	game.used_unit != game.units1[game.target1_ipos][game.target1_jpos] && 
	game.trombone_turn == 0){
		game.abilitytrigger = 0;
		trying = 1;
		scr_trw3();
		game.button_used = 0;
		game.target1 = 0;
	}





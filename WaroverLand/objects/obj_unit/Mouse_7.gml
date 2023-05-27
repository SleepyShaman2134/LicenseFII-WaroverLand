/// @description Insert description here
// You can write your code in this editor
if(obj_endturn.turn == 1){
	if(mouse_check_button_released(mb_left) && game.abilitytrigger == 1 &&
	game.units1[ipos][jpos] != game.used_unit && ipos == game.used_unit_i &&
	game.sprite_used == spr_frenchhorn){
		game.abilitytrigger = 0;
		scr_fhw2();
		game.button_used = 0;
	}

	if(mouse_check_button_released(mb_left) && game.abilitytrigger == 1 &&
	game.units1[ipos][jpos] != game.used_unit && ipos < 3 && game.button_used == 1 &&
	game.sprite_used == spr_tuba){
		game.abilitytrigger = 0;
		scr_tw1();
		game.button_used = 0;
	}

	if(mouse_check_button_released(mb_left) && game.abilitytrigger == 1 &&
	game.units1[ipos][jpos] != game.used_unit && ipos < 3 &&
	game.sprite_used == spr_trumpet){
		game.abilitytrigger = 0;
		scr_tmpw1();
		game.button_used = 0;
	}

	if(mouse_check_button_released(mb_left) && game.abilitytrigger == 1 &&
	ipos > 0 && ipos < 3 && game.button_used == 3 && game.sprite_used == spr_tuba){
		game.abilitytrigger = 0;
		scr_tw3();
		game.button_used = 0;
	}
}
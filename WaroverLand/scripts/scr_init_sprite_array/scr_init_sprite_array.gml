// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_sprite_array(){
	var i = 0;
	deckp1[i++] = 1;
	sprite_array[i] = spr_tuba;
	deckp1[i++] = 2;
	sprite_array[i] = spr_tuba;
	deckp1[i++] = 3;
	sprite_array[i] = spr_tuba;
	deckp1[i++] = 4;
	sprite_array[i] = spr_frenchhorn;
	deckp1[i++] = 5;
	sprite_array[i] = spr_frenchhorn;
	deckp1[i++] = 6;
	sprite_array[i] = spr_frenchhorn;
	deckPCount = i;
	return;
}
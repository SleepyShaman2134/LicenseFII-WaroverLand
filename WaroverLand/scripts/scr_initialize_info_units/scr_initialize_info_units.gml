// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialize_info_units(){
	i = 0;
	info_units[i] = 1;
	info_races[i] = 1;
	sprite_units[i++] = spr_frenchhorn;
	info_units[i] = 2;
	info_races[i] = 1;
	sprite_units[i++] = spr_tuba;
	info_units[i] = 3;
	info_races[i] = 1;
	sprite_units[i++] = spr_trombone;
	info_units[i] = 4;
	info_races[i] = 1;
	sprite_units[i++] = spr_trumpet;
	nb_of_units = i;
}
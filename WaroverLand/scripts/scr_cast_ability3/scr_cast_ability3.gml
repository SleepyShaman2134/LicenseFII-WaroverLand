// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cast_ability3(vari, varj){
	if(unit_rvigor >0 ){
		if(unit_sprite == spr_frenchhorn){
			game.abilitytrigger = 1;
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i = spacei;
			game.used_unit_j = spacej;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			game.unit_used_race = unit_race;
			game.unit_used_tier = unit_tier;
			game.button_used = buttontype;
		}
		
		if(unit_sprite == spr_tuba){
			game.abilitytrigger = 1;
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i = spacei;
			game.used_unit_j = spacej;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			game.unit_used_tier = unit_tier;
			game.button_used = buttontype;
		}
		
		if(unit_sprite == spr_trombone){
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i = spacei;
			game.used_unit_j = spacej;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			game.unit_used_tier = unit_tier;
			game.button_used = buttontype;
			game.target1 = 0;
			game.target1_ipos = 0;
			game.target1_jpos = 0;
			game.target1_xpos = 0;
			game.target1_ypos = 0;
			//scr_trw3();
		}
		
		if(unit_sprite == spr_trumpet){
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i = spacei;
			game.used_unit_j = spacej;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			game.unit_used_tier = unit_tier;
			game.button_used = buttontype;
			game.target1 = 0;
			game.target1_ipos = 0;
			game.target1_jpos = 0;
			game.target1_xpos = 0;
			game.target1_ypos = 0;
			scr_tmpw3();
		}
	}
}
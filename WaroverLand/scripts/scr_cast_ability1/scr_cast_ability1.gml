// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cast_ability1(vari, varj){
	if(unit_rvigor >0 ){
		if(unit_sprite == spr_frenchhorn /*&& game.debuff_7 == 0*/){
			game.used_unit = game.units1[spacei][spacej];
			scr_fhw1(vari, varj, unit_tier, unit_rpoints);
		}
		if(unit_sprite == spr_tuba){
			game.abilitytrigger = 1;
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i =spacei;
			game.used_unit_j = spacej;
			game.unit_used_tier = unit_tier;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			game.button_used = buttontype;
		}
		if(unit_sprite == spr_trombone){
			//game.abilitytrigger = 1;
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i =spacei;
			game.used_unit_j = spacej;
			game.unit_used_tier = unit_tier;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			scr_trw1();
		}
		if(unit_sprite == spr_trumpet){
			game.abilitytrigger = 1;
			game.used_unit = game.units1[spacei][spacej];
			game.used_unit_i =spacei;
			game.used_unit_j = spacej;
			game.unit_used_tier = unit_tier;
			game.sprite_used = unit_sprite;
			game.unit_valuegp = unit_rpoints;
			game.button_used = buttontype;
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_use_of_unit_ability(unit, skill){
	for(i = 0; i<nb_of_units; i++){
		if(unit == info_units[i]){
			if(skill == abilities_units[i][0]){
				scr_ability_1(unit);
			}
			if(skill == abilities_units[i][1]){
				scr_ability_1(unit);
			}
			if(skill == abilities_units[i][2]){
				scr_ability_1(unit);
			}
			if(skill == abilities_units[i][3]){
				scr_ability_1(unit);
			}
		}
	}
}
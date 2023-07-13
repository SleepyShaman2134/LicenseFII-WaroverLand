// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_unit(xpos, ypos){
	chooser = round(random_range(1, 4));
	for(i = 0; i < 4; i++){
		if(chooser == player.player_units[i]){
			game.card1 = i;
			game.units1[vari][varj] = instance_create_depth(xpos, ypos, -2, obj_unit);
			game.vari = vari;
			game.varj = varj;
			game.varx = varx;
			game.vary = vary;
			game.race = player.player_races[i];
			isunit=1;
			with(game.units1[vari][varj]){
				cardNum = game.card1;
				set = true;
				ipos = game.vari;
				jpos = game.varj;
				xpos_unit = game.varx;
				ypos_unit = game.vary;
				tiertype = game.gametier;
				race = game.race;
			}
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lord_ability4(){
	switch(lord_sprite){
		case spr_euphonim:
			if(player.discordia >= 3){
				willpower = 5;
				scr_net_change_mana(player.willpower);
				game.lord_use += 1;
			}
		break;
	}
}
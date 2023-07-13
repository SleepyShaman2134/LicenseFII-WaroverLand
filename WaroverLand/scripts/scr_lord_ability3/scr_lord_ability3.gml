// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lord_ability3(){
	switch(lord_sprite){
		case spr_euphonim:
			player.discordia += 3;
			scr_net_change_discordia(player.discordia);
			if(player.willpower + 2 > 5)
				player.willpower = 5;
			else
				player.willpower += 2;
			scr_net_change_mana(player.willpower);
			game.lord_use += 1;
		break;
	}
}
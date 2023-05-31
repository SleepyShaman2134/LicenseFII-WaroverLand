// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cast_euphonim(ability_number){
	if(ability_number == 1){
		if(game.nb_turns > 8)
			player.gold = player.gold + 5;
		if(game.nb_turns < 8 && game.nb_turns >= 5){
			player.gold = player.gold + 3;
		}
		if(game.nb_turns < 5){
			player.gold = player.gold + 1;
		}
	}
	if(ability_number == 2){
		if(player.willpower >= obj_lvlmeter.lvl_meter || player.magic >= obj_lvlmeter.lvl_meter){
			game.activate_card = 2;
			game.targetunit = 0;
			game.targetstructure = 0;
			game.meter = obj_lvlmeter.lvl_meter;
		}
	}
	
	if(ability_number == 3){
		if(player.willpower >= obj_lvlmeter.lvl_meter + 1 || player.magic >= obj_lvlmeter.lvl_meter + 1){
			game.activate_card = 3;
			game.targetunit = 0;
			game.targetstructure = 0;
			game.meter = obj_lvlmeter.lvl_meter;
		}
	}
	if(ability_number != 4){
		if(player.willpower >= obj_lvlmeter.lvl_meter || player.magic >= obj_lvlmeter.lvl_meter){
			game.activate_card = 4;
			game.targetunit = 0;
			game.targetstructure = 0;
			game.meter = obj_lvlmeter.lvl_meter;
		}
	}
	
	if(ability_number == 5){
		if(player.willpower >= obj_lvlmeter.lvl_meter || player.magic >= obj_lvlmeter.lvl_meter){
			game.activate_card = 5;
			game.targetunit = 0;
			game.targetstructure = 0;
			game.meter = obj_lvlmeter.lvl_meter;
		}
	}
}
/// @description Insert description here
// You can write your code in this editor
if(game.activate_card == 10 && type_debuff == 7){
	obj_player.willpower -= 5;
	scr_net_change_mana(obj_player.willpower);
	game.debuff_7 = 0;
	game.activate_card = 0;
	instance_destroy();
}


if(game.activate_card == 10 && type_debuff == 8){
	obj_player.willpower -= 3;
	scr_net_change_mana(obj_player.willpower);
	game.debuff_8 = 0;
	game.activate_card = 0;
	instance_destroy();
}
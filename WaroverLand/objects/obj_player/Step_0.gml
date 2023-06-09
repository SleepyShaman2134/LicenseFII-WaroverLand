/// @description Insert description here
// You can write your code in this editor
if(obj_endturn.turn == 1){
	if(keyboard_check_pressed(vk_enter)){
		/*if(alarm[0] == -1){
			alarm[0] = 1;
		}*/
		/*if(handPCount<MAXPHAND){
			scr_draw(1);
		}*/
	}
	if(handPCount<MAXPHAND){
			scr_draw(1);
		}
}

/*with(deck){
	if(alarm[0] == 0){
		alarm[0] = 1;
	}
}*/

if(discordia >= 5){
	obj_game.lose = 1;
}

if(obj_game.score1 >= 100 && discordia <5){
	obj_game.win = 1;
}

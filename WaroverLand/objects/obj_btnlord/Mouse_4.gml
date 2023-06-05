/// @description Insert description here
// You can write your code in this editor
if(obj_endturn.turn == 1 && game.lord_use == 0){
	if(buttontype == 1 && mouse_check_button_pressed(mb_left) && activate == 0){
		activate = 1;
		//ipos, jpos
		scr_lord_ability1();
		activate = 0;
	}

	if(buttontype == 2 && mouse_check_button_pressed(mb_left) && activate == 0){
		activate = 1;
		scr_lord_ability2();
		activate = 0;
	}

	if(buttontype == 3 && mouse_check_button_pressed(mb_left) && activate == 0){
		activate = 1;
		scr_lord_ability3();
		activate = 0;
	}
	
	if(buttontype == 4 && mouse_check_button_pressed(mb_left) && activate == 0){
		activate = 1;
		scr_lord_ability4();
		activate = 0;
	}
}
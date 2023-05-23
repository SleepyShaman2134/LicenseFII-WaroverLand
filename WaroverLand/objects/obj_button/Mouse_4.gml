/// @description Insert description here
// You can write your code in this editor

if(buttontype == 1 && mouse_check_button_pressed(mb_left) && activate == 0){
	activate = 1;
	//ipos, jpos
	scr_cast_ability1(spacei, spacej);
	activate = 0;
}

if(buttontype == 2 && mouse_check_button_pressed(mb_left) && activate == 0){
	activate = 1;
	scr_cast_ability2(spacei, spacej);
	activate = 0;
}

if(buttontype == 3 && mouse_check_button_pressed(mb_left) && activate == 0){
	activate = 1;
	scr_cast_ability3(spacei, spacej);
	activate = 0;
}
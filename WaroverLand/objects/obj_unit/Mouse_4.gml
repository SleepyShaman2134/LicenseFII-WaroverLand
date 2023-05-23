/// @description Insert description here
// You can write your code in this editor

/*if(mouse_check_button_pressed(mb_left) && instance_exists(obj_button) && showbuttons ==1){
		instance_destroy(obj_button);
		showbuttons = 0;
		game.ispressed = 0;
}*/

if(mouse_check_button_pressed(mb_left) && showbuttons == 0 && game.ispressed == 0 &&
x == xpos_unit && y == ypos_unit && ipos > 2 && blocked == 0){
	showbuttons = 1;
	scr_set_buttons();
}

if(mouse_check_button_pressed(mb_left) && showbuttons == 1 && ipos > 2){
	game.ispressed++;
}

//ability 3 trombone
if(mouse_check_button_pressed(mb_left) /*&& showbuttons == 1*/ && ipos > 2 &&
game.button_used == 3 && game.sprite_used == spr_trombone && game.target1 == 0){
	game.abilitytrigger = 1;
	game.target1 = game.units1[ipos][jpos];
	game.target1_ipos = ipos;
	game.target1_jpos = jpos;
	game.target1_xpos = xpos_unit;
	game.target1_ypos = ypos_unit;
	/*ipos = 0;
	jpos = 0;
	xpos_unit = 0;
	ypos_unit = 0;*/
}
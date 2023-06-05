/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && showbuttons == 0 && game.ispressed == 0 &&
x == xpos && y == ypos && blocked == 0 &&
game.activate_card == 0 && player_lord == 0){
	showbuttons = 1;
	scr_set_buttonslord();
	test = 1;
}

if(mouse_check_button_pressed(mb_left) && showbuttons == 1 && game.activate_card == 0){
	game.ispressed++;
	test = 2 ;
}
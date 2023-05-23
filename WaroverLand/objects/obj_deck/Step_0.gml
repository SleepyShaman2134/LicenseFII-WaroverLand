/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(vk_up)){
	player1.face_up = 1;
	player1.deck_buffer_x = -200 -5;
}
if (keyboard_check_released(vk_down)){
	player1.face_up = 0;
	player1.deck_buffer_x = .4;
}
if (keyboard_check_released(vk_left)){
	with(player1){ scr_shuffle_decks();}
}
if (keyboard_check_released(vk_right)){
	with(player1) {
		scr_drawP(1);
	}
}
if(keyboard_check_released(vk_escape)){
	game_restart();
}
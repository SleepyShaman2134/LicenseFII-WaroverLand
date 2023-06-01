/// @description Insert description here
// You can write your code in this editor
//sprite_index = player.player_cards_sprite[cardNum];

if(card_drawn == true){
	if(alarm[0] == -1){
		alarm[0] = 1;
	}
}
if(card_in_hand == true){
	xPos =  room_width/3 - player.handPCount/2 * (220 + 3) + 220/2 + (3+220)*hand_position;
	if(point_distance(x, y, xPos, yPos) > 15){
		move_towards_point(xPos, yPos, 15);
	}
	else{
		x=xPos;
		y=yPos;
		speed=0;
	}
}
if(mouse_check_button_released(mb_left)){
	selected = false;
}

if(uses_per_turn == 0){
	scr_change_card(game.card_used);
}
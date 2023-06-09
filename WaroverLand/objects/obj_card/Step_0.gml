/// @description Insert description here
// You can write your code in this editor
//sprite_index = player.player_cards_sprite[cardNum];

mouseX = mouse_x;
mouseY = mouse_y;
if (point_in_rectangle(mouseX, mouseY, x-100, y - 100, x + 100, y + 100) && game.notshow != true)
{
    // Mouse is hovering over the object
    hovered = true;
	
}
else
{
    // Mouse is not hovering over the object
    hovered = false;
	
}

//TREABA DE AICI A RAMAS
if(hovered == true && game.notshow != true){
	with(write){
		hovered = other.hovered;
		type_card = other.cardNum;
		card_press = 1;
		show_abilities = 1;
	}
}
else{
	with(write){
		hovered = other.hovered;
		type_card = 0;
		card_press = 0;
		show_abilities = 0;
	}
}

if(card_drawn == true){
	if(alarm[0] == -1){
		alarm[0] = 1;
	}
}
if(card_in_hand == true){
	xPos =  1500/*room_width/3*/ - player.handPCount/2 * (220 + 3) + 220/2 + (3+220)*hand_position;
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






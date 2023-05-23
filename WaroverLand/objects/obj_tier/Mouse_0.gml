/// pull the card to one of the tiles
if(mouse_check_button_pressed(mb_left) && x == tieripos && y == tierjpos){
	selected = true;
	if(tier == 1){
		game.gametier = 1;
	}
	if(tier == 2){
		game.gametier = 2;
	}
	if(tier == 3){
		game.gametier = 3;
	}
}


if(selected == true){
	x = mouse_x;
	y = mouse_y;
}

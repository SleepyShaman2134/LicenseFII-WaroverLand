/// @description Insert description here
// You can write your code in this editor
switch (name){
	case 1:
		sprite_index = spr_euphonim;
		player_sprite = spr_euphonim;
		//name = -1;
	break;
}

if(mouse_check_button_pressed(mb_left) && showbuttons == 1 && game.ispressed ==2){
	instance_destroy(obj_btnlord);
	showbuttons = 0;
	game.ispressed = 0;
}

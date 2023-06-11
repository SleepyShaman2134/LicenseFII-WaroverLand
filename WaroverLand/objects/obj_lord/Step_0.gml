/// @description Insert description here
// You can write your code in this editor
switch (name_lord){
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


if(obj_game.lord_op == 0 && obj_game.opponent == 1){
	scr_net_set_lord(name_lord);
}

mouseX = mouse_x;
mouseY = mouse_y;
if (point_in_rectangle(mouseX, mouseY, x-100, y - 100, x + 100, y + 100) && showbuttons != 1)
{
    // Mouse is hovering over the object
    hovered = true;
	
}
else
{
    // Mouse is not hovering over the object
    hovered = false;
	
}

if(hovered == true && showbuttons != 1){
	with(write){
		hovered = other.hovered;
		type_lord = other.sprite_index;
		ability1_press = 1;
		ability2_press = 1;
		ability3_press = 1;
		ability4_press = 1;
		show_abilities = 1;
	}
}
else{
	with(write){
		hovered = other.hovered;
		type_lord = 0;
		ability1_press = 0;
		ability2_press = 0;
		ability3_press = 0;
		ability4_press = 0;
		show_abilities = 0;
	}
}
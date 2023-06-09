/// @description Insert description here
// You can write your code in this editor
if(set == true && single == 0){
	single++;
	sprite_index=player.player_units_sprite[cardNum];
	if(ipos>2)
	scr_set_stats(player.player_units_sprite[cardNum]);
}

if(obj_endturn.turn == 0 && rgains > gains && single2 == 0){
	rgains = gains;
	single2++;
}

if(obj_endturn.turn == 1){
	single2 = 0;
}


if(mouse_check_button_pressed(mb_left) && showbuttons == 1 && game.ispressed ==2){
	instance_destroy(obj_button);
	showbuttons = 0;
	game.ispressed = 0;
}

if(mouse_check_button_released(mb_left) && game.abilitytrigger == 0 &&
game.units1[ipos][jpos]==game.used_unit && game.activateability == 1){
	
	if(rvigor < vigor){
		var value = random_range(rvigor, vigor);
		if(value < vigor/2){
			player.discordia += 1;
			scr_net_change_discordia(player.discordia);
		}
	}
	if(rgains < 0){
		player.discordia += 1;
		scr_net_change_discordia(player.discordia);
	}
	
	rvigor--;
	scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor);
	game.activateability = 0;
	if(game.debuff_8 == 1 && rgains <=2){
		player.discordia += 1;
		scr_net_change_discordia(player.discordia);
	}
}


mouseX = mouse_x;
mouseY = mouse_y;
if (point_in_rectangle(mouseX, mouseY, x-100, y - 100, x + 100, y + 100) && showbuttons == 0)
{
	// Mouse is hovering over the object
	hovered = true;
	
}
else
{
	// Mouse is not hovering over the object
	hovered = false;
	
}

if(hovered == true && showbuttons == 0){
	with(write){
		hovered = other.hovered;
		type = other.player.player_units_sprite[other.cardNum];
		ability1_press = 1;
		ability2_press = 1;
		ability3_press = 1;
	}
}
else{
	with(write){
		hovered = other.hovered;
		type = 0;
		ability1_press = 0;
		ability2_press = 0;
		ability3_press = 0;
	}
}

if(showbuttons == 1){
	with(button1){
			buttontype=1;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_turn1 = other.unit_turn1;
			unit_turn2 = other.unit_turn2;
			unit_turn3 = other.unit_turn3;
		}
	with(button2){
			buttontype=2;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_turn1 = other.unit_turn1;
			unit_turn2 = other.unit_turn2;
			unit_turn3 = other.unit_turn3;
		}
	with(button3){
			buttontype=3;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_turn1 = other.unit_turn1;
			unit_turn2 = other.unit_turn2;
			unit_turn3 = other.unit_turn3;
		}
	//if(tuba_debuff != 0)
}
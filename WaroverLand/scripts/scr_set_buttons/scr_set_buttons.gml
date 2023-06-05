// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_buttons(){
	if (sprite_index == spr_frenchhorn){
		button1 = instance_create_depth(2500, 1857, -2, obj_button);
		with(button1){
			buttontype=1;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		button2 = instance_create_depth(2500, 1587, -2, obj_button);
		with(button2){
			buttontype=2;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		button3 = instance_create_depth(2500, 1287, -2, obj_button);
		with(button3){
			buttontype=3;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
	}
	if (sprite_index == spr_tuba){
		button1 = instance_create_depth(2500, 1857, -2, obj_button);
		button2 = instance_create_depth(2500, 1587, -2, obj_button);
		button3 = instance_create_depth(2500, 1287, -2, obj_button);
		with(button1){
			buttontype=1;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		with(button2){
			buttontype=2;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		with(button3){
			buttontype=3;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
	}
	if (sprite_index == spr_trombone){
		button1 = instance_create_depth(2500, 1857, -2, obj_button);
		button2 = instance_create_depth(2500, 1587, -2, obj_button);
		button3 = instance_create_depth(2500, 1287, -2, obj_button);
		with(button1){
			buttontype=1;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		with(button2){
			buttontype=2;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		with(button3){
			buttontype=3;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier = other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
	}
	if (sprite_index == spr_trumpet){
		button1 = instance_create_depth(2500, 1857, -2, obj_button);
		button2 = instance_create_depth(2500, 1587, -2, obj_button);
		button3 = instance_create_depth(2500, 1287, -2, obj_button);
		with(button1){
			buttontype=1;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier =  other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		with(button2){
			buttontype=2;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier =  other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
		with(button3){
			buttontype=3;
			unit_sprite = player.player_units_sprite[other.cardNum];
			spacei = other.ipos;
			spacej = other.jpos;
			unit_tier =  other.tiertype;
			unit_rpoints = other.rgains;
			unit_rvigor = other.rvigor;
			unit_race = other.race;
		}
	}

}
/// @description Insert description here
// You can write your code in this editor
if(turn == 1){
	turn = 0;
	game.nb_turns++;
	game.gold_turn++;
	game.lord_use = 0;
	game.ispressed = 0
	game.showbuttons = 0;
	game.trombone_turn = 0;
	game.trumpet_turn = 0;
	game.ispressed = 0;
	//for obj_unit for abilities for targeting
	game.released = 0;
	//for triggering abilities
	game.abilitytrigger = 0;
	//for activating abilities
	game.activateability = 0;
	//check who used the ability
	game.used_unit = 0;
	//the position from units1
	game.used_unit_i = 0;
	game.used_unit_j = 0;
	// the position from the room
	game.used_unit_x = 0;
	game.used_unit_y = 0;
	//the vigor and gainer/pointer (not needed)
	game.unit_vigor = 0;
	game.unit_valuegp = 0;
	//the identifier of the units type based on sprite
	game.sprite_used = 0;
	//the tier of the unit
	game.unit_used_tier = 0;
	//the race of the used race
	game.unit_used_race = 0;
	for(i = 3; i < 6; i++){
		for(j = 0; j < 5; j++){
			if(game.units1[i][j] != noone){
				with(game.units1[i][j]){
					tuba_debuff = 0;
					rgains = gains;
					if(rvigor < vigor)
						rvigor ++ ;
					blocked = 0;
					unit_turn1 = 0;
					unit_turn2 = 0;
					unit_turn3 = 0;
					scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor);
				}
				
			}
		}
		
	}
	scr_net_dispell_debuff();
	buffer_seek(obj_client.client_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.client_buffer, buffer_u8, network.set_turn);
	buffer_write(obj_client.client_buffer, buffer_u8, game.nb_turns);
	buffer_write(obj_client.client_buffer, buffer_u8, game.gold_turn);
	network_send_packet(obj_client.client, obj_client.client_buffer, buffer_tell(obj_client.client_buffer));
}
//turn = 0;
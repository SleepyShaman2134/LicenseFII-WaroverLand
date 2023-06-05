// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_received_packet(buffer){
	msgid = buffer_read(buffer, buffer_u8);
	switch(msgid){
		case network.set_unit:
			//show_message("RESPONSE EARNED");
			var cardNum1, vigor1, gains1, ipos1, jpos1, tier1;
			cardNum1 = buffer_read(buffer, buffer_u8);
			vigor1 = buffer_read(buffer, buffer_u8);
			gains1 = buffer_read(buffer, buffer_u8);
			ipos1 = buffer_read(buffer, buffer_u8);
			jpos1 = buffer_read(buffer, buffer_u8);
			tier1 = buffer_read(buffer, buffer_u8);
			obj_game.units1[ipos1][jpos1] = instance_create_depth(obj_game.spaces[ipos1][jpos1].varx,obj_game.spaces[ipos1][jpos1].vary, -2, obj_unit);
			obj_game.spaces[ipos1][jpos1].isunit=1;
			with(obj_game.units1[ipos1][jpos1]){
				cardNum = cardNum1;
				set = true;
				self.ipos = ipos1;
				self.jpos = jpos1;
				rgains = gains1;
				gains = gains1;
				rvigor = vigor1;
				vigor = vigor1;
				xpos_unit = obj_game.spaces[ipos1][jpos1].varx;
				ypos_unit = obj_game.spaces[ipos1][jpos1].vary;
				tiertype = tier1;
			}
			//buffer_delete(buffer);
			break;
		case network.player_connect:
			obj_endturn.turn = buffer_read(buffer, buffer_u8);
			var _socket = buffer_read(buffer, buffer_u8);
			player = instance_create_depth(0, 0, 0, obj_player);
			player.socket = _socket;
			break;
		case network.player_joined:
			obj_game.opponent = 1;
			break;
		case network.set_turn:
			obj_endturn.turn = 1;
			var value1, value2;
			value1 = buffer_read(buffer, buffer_u8);
			value2 = buffer_read(buffer, buffer_u8);
			obj_game.nb_turns = value1;  
			obj_game.gold_turn =  value2;
			player.gold += obj_game.gold_turn;
			break;
		case network.change_position:
			obj_game.check += 1;
			var iposvar, jposvar, nexti, nextj;
			iposvar = buffer_read(buffer, buffer_u8);
			jposvar = buffer_read(buffer, buffer_u8);
			nexti = buffer_read(buffer, buffer_u8);
			nextj = buffer_read(buffer, buffer_u8);
			with(obj_game.spaces[iposvar][jposvar]){
				isunit = 0;
			}
			with(obj_game.units1[iposvar][jposvar]){
				x = obj_game.spaces[nexti][nextj].varx;
				y = obj_game.spaces[nexti][nextj].vary;
			}
			obj_game.units1[nexti][nextj] = obj_game.units1[iposvar][jposvar];
			obj_game.units1[iposvar][jposvar] = noone;
			with(obj_game.spaces[nexti][nextj]){
				isunit = 1;
			}
			with(obj_game.units1[nexti][nextj]){
				self.ipos = nexti;
				self.jpos = nextj;
				xpos_unit = obj_game.spaces[nexti][nextj].varx;
				ypos_unit = obj_game.spaces[nexti][nextj].vary;
				//show_message(string(x) + " " + string(y) + " " + string(xpos_unit) + " "+ string(ypos_unit));
			}
		break;
		
		case network.change_stats:
			var neti, netj, netrgains, netgains, netrvigor, netvigor;
			neti = buffer_read(buffer, buffer_u8);
			netj = buffer_read(buffer, buffer_u8);
			netrgains = buffer_read(buffer, buffer_u8);
			netgains = buffer_read(buffer, buffer_u8);
			netrvigor = buffer_read(buffer, buffer_u8);
			netvigor = buffer_read(buffer, buffer_u8);
			with(obj_game.units1[neti][netj]){
				gains = netgains;
				rgains = netrgains;
				vigor = netvigor;
				rvigor = netrvigor;
			}
		break;
		
		case network.change_structure:
			var neti, netj, netstructure;
			neti = buffer_read(buffer, buffer_u8);
			netj = buffer_read(buffer, buffer_u8);
			netstructure = buffer_read(buffer, buffer_u8);
			with(obj_game.spaces[neti][netj]){
				structure = netstructure;
			}
		break;
		
		case network.eliminate_unit:
			var neti, netj;
			neti = buffer_read(buffer, buffer_u8);
			netj = buffer_read(buffer, buffer_u8);
			instance_destroy(obj_game.units1[neti][netj]);
			obj_game.units1[neti][netj] = noone;
			with(obj_game.spaces[neti][netj]){
				isunit = 0;
			}
		break;
		
		case network.set_world_debuff:
			var netdebuff, debuff;
			netdebuff = buffer_read(buffer, buffer_string);
			switch(netdebuff){
				case "debuff_7":
					obj_game.debuff_7 = 1;
					debuff = instance_create_depth(200, 2300, -3, obj_world_debuff);
					with(debuff){
						type_debuff = 7;
						sprite_index = spr_debuff7;
					}
				break;
				
				case "debuff_8":
					obj_game.debuff_8 = 1;
					debuff = instance_create_depth(200, 2600, -3, obj_world_debuff);
					with(debuff){
						type_debuff = 8;
						sprite_index = spr_debuff8;
					}
				break;
			}
		break;
		
		case network.set_unit_debuff:
			var ipos, jpos, points, debuff;
			ipos = buffer_read(buffer, buffer_u8);
			jpos = buffer_read(buffer, buffer_u8);
			points = buffer_read(buffer, buffer_u8);
			debuff = buffer_read(buffer, buffer_string);
			switch(debuff){
				case "tuba_debuff":
					with(obj_game.units1[ipos][jpos]){
						tuba_debuff = points;
						rgains += points;
					}
				break;
				
				case "blocked":
					with(obj_game.units1[ipos][jpos]){
						blocked = 1;
					}
				break;
			}
		break
		
		case network.change_score:
			var value_score;
			value_score = buffer_read(buffer, buffer_u8);
			obj_game.score1 = value_score;
		break
		
		case network.change_discordia:
			var value_discordia;
			value_discordia = buffer_read(buffer, buffer_u8);
			obj_game.discordia = value_discordia;
		break;
		
		case network.change_gold_op:
			var value_gold;
			value_gold = buffer_read(buffer, buffer_u8);
			obj_game.gold_op = value_gold;
		break;
		
		case network.change_mana_op:
			var value_mana;
			value_mana = buffer_read(buffer, buffer_u8);
			obj_game.mana_op = value_mana;
		break;
		
		case network.change_score_op:
			var value_score;
			value_score = buffer_read(buffer, buffer_u8);
			obj_game.score2 = value_score;
		break;
		
		case network.change_discordia_op:
			var value_discordia;
			value_discordia = buffer_read(buffer, buffer_u8);
			obj_game.discordia_op = value_discordia;
		break;
		
		case network.dispell_debuff:
			var debuff;
			for(i = 0; i < 3; i++){
				for(j = 0; j < 5; j++){
					if(obj_game.units1[i][j] != noone){
						obj_game.units1[i][j].tuba_debuff = 0;
						obj_game.units1[i][j].blocked = 0;
						obj_game.units1[i][j].rgains = obj_game.units1[i][j].gains;
					}
				}
			}
		break;
	}
}
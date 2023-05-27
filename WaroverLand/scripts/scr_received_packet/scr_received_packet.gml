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
				ipos = ipos1;
				jpos = jpos1;
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
			var _player = instance_create_depth(0, 0, 0, obj_player);
			_player.socket = _socket;
			break;
		case network.player_joined:
			obj_game.opponent = 1;
			break;
		case network.set_turn:
			obj_endturn.turn = 1;
			break;
	}
}
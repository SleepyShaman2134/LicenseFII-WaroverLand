// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function received_packet(buffer, socket){
	msgid = buffer_read(buffer, buffer_u8);
	//show_message("Data to read");
	switch(msgid){
		case network.set_unit:
			//show_message("begin reading");
			var cardNum, vigor, gains, ipos, iposc, jpos, jposc, tier;
			//cardNum = buffer_read(buffer, buffer_string);
			//show_message(cardNum);
			cardNum = buffer_read(buffer, buffer_u8);
			vigor = buffer_read(buffer, buffer_u8);
			gains = buffer_read(buffer, buffer_u8);
			iposc = buffer_read(buffer, buffer_u8);
			jposc = buffer_read(buffer, buffer_u8);
			tier = buffer_read(buffer, buffer_u8);
			if(iposc == 5){
				ipos = 0;
			}
			if(iposc == 4){
				ipos = 1;
			}
			if(iposc == 3){
				ipos = 2;
			}
			if(jposc == 4){
				jpos = 0;
			}
			if(jposc == 3){
				jpos = 1;
			}
			if(jposc == 2){
				jpos = 2;
			}
			if(jposc == 1){
				jpos = 3;
			}
			if(jposc == 0){
				jpos = 4;
			}
			var i = 0;
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
				//show_message("1");
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.set_unit);
					buffer_write(server_buffer, buffer_u8, cardNum);
					buffer_write(server_buffer, buffer_u8, vigor);
					buffer_write(server_buffer, buffer_u8, gains);
					buffer_write(server_buffer, buffer_u8, ipos);
					buffer_write(server_buffer, buffer_u8, jpos);
					buffer_write(server_buffer, buffer_u8, tier);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
			break;
		case network.set_turn:
			var i = 0;
			var nb_turns = buffer_read(buffer, buffer_u8);
			var nb_gold = buffer_read(buffer, buffer_u8);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.set_turn);
					buffer_write(server_buffer, buffer_u8, nb_turns);
					buffer_write(server_buffer, buffer_u8, nb_gold);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
			break;
		case network.change_position:
			var ipos, jpos, iposc, jposc, nexti, nextj, nextic, nextjc, i = 0;
			iposc = buffer_read(buffer, buffer_u8);
			jposc = buffer_read(buffer, buffer_u8);
			nextic = buffer_read(buffer, buffer_u8);
			nextjc = buffer_read(buffer, buffer_u8);
			if(iposc == 5){
				ipos = 0;
			}
			if(iposc == 4){
				ipos = 1;
			}
			if(iposc == 3){
				ipos = 2;
			}
			
			if(iposc == 2){
				ipos = 3;
			}
			if(iposc == 1){
				ipos = 4;
			}
			if(iposc == 0){
				ipos = 5;
			}
			
			if(jposc == 4){
				jpos = 0;
			}
			if(jposc == 3){
				jpos = 1;
			}
			if(jposc == 2){
				jpos = 2;
			}
			if(jposc == 1){
				jpos = 3;
			}
			if(jposc == 0){
				jpos = 4;
			}
			
			if(nextic == 5){
				nexti = 0;
			}
			if(nextic == 4){
				nexti = 1;
			}
			if(nextic == 3){
				nexti = 2;
			}
			
			if(nextic == 2){
				nexti = 3;
			}
			if(nextic == 1){
				nexti = 4;
			}
			if(nextic == 0){
				nexti = 5;
			}
			
			if(nextjc == 4){
				nextj = 0;
			}
			if(nextjc == 3){
				nextj = 1;
			}
			if(nextjc == 2){
				nextj = 2;
			}
			if(nextjc == 1){
				nextj = 3;
			}
			if(nextjc == 0){
				nextj = 4;
			}
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_position);
					buffer_write(server_buffer, buffer_u8, ipos);
					buffer_write(server_buffer, buffer_u8, jpos);
					buffer_write(server_buffer, buffer_u8, nexti);
					buffer_write(server_buffer, buffer_u8, nextj);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_stats:
			var ipos, jpos , iposc, jposc, rgains, gains, rvigor, vigor, i = 0;
			iposc = buffer_read(buffer, buffer_u8);
			jposc = buffer_read(buffer, buffer_u8);
			rgains = buffer_read(buffer, buffer_u8);
			gains = buffer_read(buffer, buffer_u8);
			rvigor = buffer_read(buffer, buffer_u8);
			vigor = buffer_read(buffer, buffer_u8);
			if(iposc == 5){
				ipos = 0;
			}
			if(iposc == 4){
				ipos = 1;
			}
			if(iposc == 3){
				ipos = 2;
			}
			
			/*if(iposc == 2){
				ipos = 3;
			}
			if(iposc == 1){
				ipos = 4;
			}
			if(iposc == 0){
				ipos = 5;
			}*/
			
			if(jposc == 4){
				jpos = 0;
			}
			if(jposc == 3){
				jpos = 1;
			}
			if(jposc == 2){
				jpos = 2;
			}
			if(jposc == 1){
				jpos = 3;
			}
			if(jposc == 0){
				jpos = 4;
			}
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_stats);
					buffer_write(server_buffer, buffer_u8, ipos);
					buffer_write(server_buffer, buffer_u8, jpos);
					buffer_write(server_buffer, buffer_u8, rgains);
					buffer_write(server_buffer, buffer_u8, gains);
					buffer_write(server_buffer, buffer_u8, rvigor);
					buffer_write(server_buffer, buffer_u8, vigor);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_structure:
			var ipos, jpos , iposc, jposc, structure, i = 0;
			iposc = buffer_read(buffer, buffer_u8);
			jposc = buffer_read(buffer, buffer_u8);
			structure = buffer_read(buffer, buffer_u8);
			if(iposc == 5){
				ipos = 0;
			}
			if(iposc == 4){
				ipos = 1;
			}
			if(iposc == 3){
				ipos = 2;
			}
			
			/*if(iposc == 2){
				ipos = 3;
			}
			if(iposc == 1){
				ipos = 4;
			}
			if(iposc == 0){
				ipos = 5;
			}*/
			
			if(jposc == 4){
				jpos = 0;
			}
			if(jposc == 3){
				jpos = 1;
			}
			if(jposc == 2){
				jpos = 2;
			}
			if(jposc == 1){
				jpos = 3;
			}
			if(jposc == 0){
				jpos = 4;
			}
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_stats);
					buffer_write(server_buffer, buffer_u8, ipos);
					buffer_write(server_buffer, buffer_u8, jpos);
					buffer_write(server_buffer, buffer_u8, structure);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.eliminate_unit:
			var ipos, iposc, jpos, jposc, i = 0;
			iposc = buffer_read(buffer, buffer_u8);
			jposc = buffer_read(buffer, buffer_u8);
			if(iposc == 5){
				ipos = 0;
			}
			if(iposc == 4){
				ipos = 1;
			}
			if(iposc == 3){
				ipos = 2;
			}
			
			/*if(iposc == 2){
				ipos = 3;
			}
			if(iposc == 1){
				ipos = 4;
			}
			if(iposc == 0){
				ipos = 5;
			}*/
			
			if(jposc == 4){
				jpos = 0;
			}
			if(jposc == 3){
				jpos = 1;
			}
			if(jposc == 2){
				jpos = 2;
			}
			if(jposc == 1){
				jpos = 3;
			}
			if(jposc == 0){
				jpos = 4;
			}
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.eliminate_unit);
					buffer_write(server_buffer, buffer_u8, ipos);
					buffer_write(server_buffer, buffer_u8, jpos);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.set_world_debuff:
			var debuff_name, i = 0;
			debuff_name = buffer_read(buffer, buffer_string);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.set_world_debuff);
					buffer_write(server_buffer, buffer_string, debuff_name);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.set_unit_debuff:
			var ipos, jpos, iposc, jposc, points, debuff, i = 0;
			iposc = buffer_read(buffer, buffer_u8);
			jposc = buffer_read(buffer, buffer_u8);
			points = buffer_read(buffer, buffer_u8);
			debuff = buffer_read(buffer, buffer_string);
			show_message(string(iposc) +" " + string(jposc));
			if(iposc == 5){
				ipos = 0;
			}
			if(iposc == 4){
				ipos = 1;
			}
			if(iposc == 3){
				ipos = 2;
			}
			
			if(iposc == 2){
				ipos = 3;
			}
			if(iposc == 1){
				ipos = 4;
			}
			if(iposc == 0){
				ipos = 5;
			}
			
			if(jposc == 4){
				jpos = 0;
			}
			if(jposc == 3){
				jpos = 1;
			}
			if(jposc == 2){
				jpos = 2;
			}
			if(jposc == 1){
				jpos = 3;
			}
			if(jposc == 0){
				jpos = 4;
			}
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.set_unit_debuff);
					buffer_write(server_buffer, buffer_u8, ipos);
					buffer_write(server_buffer, buffer_u8, jpos);
					buffer_write(server_buffer, buffer_u8, points);
					buffer_write(server_buffer, buffer_string, debuff);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_gold:
			var gold, i = 0;
			gold = buffer_read(buffer, buffer_u8);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_gold_op);
					buffer_write(server_buffer, buffer_u8, gold);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_mana:
			var mana, i = 0;
			mana = buffer_read(buffer, buffer_u8);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_mana_op);
					buffer_write(server_buffer, buffer_u8, mana);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_score:
			var points, i = 0;
			points = buffer_read(buffer, buffer_u8);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_score_op);
					buffer_write(server_buffer, buffer_u8, points);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_discordia:
			var discordia, i = 0;
			discordia = buffer_read(buffer, buffer_u8);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_discordia_op);
					buffer_write(server_buffer, buffer_u8, discordia);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.change_score_op:
			var points, i = 0;
			points = buffer_read(buffer, buffer_u8);
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.change_score);
					buffer_write(server_buffer, buffer_u8, points);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		case network.dispell_debuff:
			var i = 0;
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.dispell_debuff);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
		break;
		
		
	}
}
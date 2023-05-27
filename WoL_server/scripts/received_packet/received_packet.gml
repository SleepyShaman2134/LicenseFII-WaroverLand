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
			repeat(ds_list_size(socket_list)){
				var _sock = ds_list_find_value(socket_list, i);
				if(_sock != socket){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.set_turn);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));
				}
				i++;
			}
			break;
	}
}
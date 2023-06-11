/// @description Insert description here
// You can write your code in this editor
type_event = ds_map_find_value(async_load, "type");

switch(type_event){
	case (network_type_connect):
		socket = ds_map_find_value(async_load, "socket");
		//show_message(socket);
		
		var player = instance_create_depth(10+count, 10+count, -1, obj_player);
		ds_map_add(socket_to_instanceid, socket, player);
		ds_list_add(socket_list, socket);
		//we send to others that a new client appeared
		var i = 0;
		repeat(ds_list_size(socket_list)){
			var _sock = ds_list_find_value(socket_list, i);
			if((socket % 2 == 0 && socket - 1 == _sock) || (socket % 2 == 1 && socket + 1 == _sock) || socket == _sock){
				if(socket % 2 == 0)
					turn = 1;
				else{
					turn = 0;
				}
				buffer_seek(server_buffer, buffer_seek_start, 0);
				buffer_write(server_buffer, buffer_u8, network.player_connect);
				buffer_write(server_buffer, buffer_u8, turn);
				buffer_write(server_buffer, buffer_u8, socket);
				network_send_packet(socket, server_buffer, buffer_tell(server_buffer));
				if((socket % 2 == 0 && socket - 1 == _sock) || (socket % 2 == 1 && socket + 1 == _sock) || (_sock == socket)){
					buffer_seek(server_buffer, buffer_seek_start, 0);
					buffer_write(server_buffer, buffer_u8, network.player_joined);
					network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));	
				}
			}
			i++;
		}
		//whenever someone connects, need to send to every client 
		//the number of clients connected
		break;
	case (network_type_disconnect):
		socket = ds_map_find_value(async_load, "socket");
		var i = 0;
		repeat(ds_list_size(socket_list)){
			var _sock = ds_list_find_value(socket_list, i);
			if((socket % 2 == 0 && socket - 1 == _sock) || (socket % 2 == 1 && socket + 1 == _sock)){
				buffer_seek(server_buffer, buffer_seek_start, 0);
				buffer_write(server_buffer, buffer_u8, network.player_disconnect);
				network_send_packet(_sock, server_buffer, buffer_tell(server_buffer));	
			}
			i++;
		}
		ds_list_delete(socket_list, ds_list_find_index(socket_list, socket));
		with(ds_map_find_value(socket_to_instanceid, socket)){
			instance_destroy();
		}
		turn = 1;
		break;
	case (network_type_data):
		buffer = ds_map_find_value(async_load, "buffer");
		socket = ds_map_find_value(async_load, "id");
		
		buffer_seek(buffer, buffer_seek_start, 0);
		received_packet(buffer, socket);
		break;
}
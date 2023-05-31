/// @description Insert description here
// You can write your code in this editor
if(turn == 1){
	turn = 0;
	game.nb_turns++;
	game.gold_turn++;
	buffer_seek(obj_client.client_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.client_buffer, buffer_u8, network.set_turn);
	buffer_write(obj_client.client_buffer, buffer_u8, game.nb_turns);
	buffer_write(obj_client.client_buffer, buffer_u8, game.gold_turn);
	network_send_packet(obj_client.client, obj_client.client_buffer, buffer_tell(obj_client.client_buffer));
}
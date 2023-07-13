// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_net_change_position(ipos, jpos, vari, varj){
	buffer_seek(obj_client.client_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.client_buffer, buffer_u8, network.change_position);
	buffer_write(obj_client.client_buffer, buffer_u8, ipos);
	buffer_write(obj_client.client_buffer, buffer_u8, jpos);
	buffer_write(obj_client.client_buffer, buffer_u8, vari);
	buffer_write(obj_client.client_buffer, buffer_u8, varj);
	network_send_packet(obj_client.client, obj_client.client_buffer, buffer_tell(obj_client.client_buffer));
}
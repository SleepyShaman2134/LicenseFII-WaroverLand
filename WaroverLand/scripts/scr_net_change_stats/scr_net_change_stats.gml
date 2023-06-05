// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_net_change_stats(ipos, jpos, rgains, gains, rvigor, vigor){
	buffer_seek(obj_client.client_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.client_buffer, buffer_u8, network.change_stats);
	buffer_write(obj_client.client_buffer, buffer_u8, ipos);
	buffer_write(obj_client.client_buffer, buffer_u8, jpos);
	buffer_write(obj_client.client_buffer, buffer_u8, rgains);
	buffer_write(obj_client.client_buffer, buffer_u8, gains);
	buffer_write(obj_client.client_buffer, buffer_u8, rvigor);
	buffer_write(obj_client.client_buffer, buffer_u8, vigor);
	network_send_packet(obj_client.client, obj_client.client_buffer, buffer_tell(obj_client.client_buffer));
}
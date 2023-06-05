/// @description Insert description here
// You can write your code in this editor
enum network{
	set_unit,
	player_connect,
	player_joined,
	set_turn,
	change_position,
	change_stats,
	change_structure,
	eliminate_unit,
	set_world_debuff,
	set_unit_debuff,
	change_gold,
	change_mana,
	change_score,
	change_discordia,
	change_gold_op,
	change_mana_op,
	change_score_op,
	change_discordia_op,
	dispell_debuff,
}
port = 6510;
max_clients = 2;
turn = 1;
count = 0;
server_socket = network_create_server(network_socket_tcp, port, max_clients);
/*while(server_socket < 0 && port < 65535){
    //show_message("Server not created");
	//show_debug_message("server socket" + server_socket);
	port++;
	server_socket = network_create_server(network_socket_tcp, port, max_clients);
}*/
/*if(server_socket < 0 ){
	//show_message("SERVER NOT OPEN");
}
else{
	show_message("found port" + port);
}*/
//show_message("")
//show_debug_message(server_socket);
server_buffer = buffer_create(1024, buffer_fixed, 1);
socket_list = ds_list_create();
socket_to_instanceid = ds_map_create();
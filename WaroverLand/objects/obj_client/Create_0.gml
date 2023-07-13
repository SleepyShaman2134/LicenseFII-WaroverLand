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
	win_lose_condition,
	set_lord,
	player_disconnect,
}

client = network_create_socket(network_socket_tcp);
check_network =network_connect(client, "127.0.0.1", 6510);
//192.168.43.23
//show_message(check_network);
client_buffer = buffer_create(1024, buffer_fixed, 1);
game = instance_create_depth(0, 0, -3, obj_game);
player = 0;
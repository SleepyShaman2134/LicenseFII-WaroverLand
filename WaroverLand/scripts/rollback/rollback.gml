// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rollback(){
	rollback_define_player(obj_player, "Instances");
	rollback_define_input({
	        click: mb_left
	});
}
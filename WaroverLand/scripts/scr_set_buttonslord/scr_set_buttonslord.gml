// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_buttonslord(){
	if(sprite_index == spr_euphonim){
		button1 = instance_create_depth(2500, 1857, -2, obj_btnlord);
		with(button1){
			buttontype=1;
			lord_sprite = other.player_sprite;
			
		}
		button2 = instance_create_depth(2500, 1587, -2, obj_btnlord);
		with(button2){
			buttontype=2;
			lord_sprite = other.player_sprite;
			
		}
		button3 = instance_create_depth(2500, 1287, -2, obj_btnlord);
		with(button3){
			buttontype=3;
			lord_sprite = other.player_sprite;
		}
		button4 = instance_create_depth(2500, 987, -2, obj_btnlord);
		with(button4){
			buttontype=4;
			lord_sprite = other.player_sprite;
		}
	}
}
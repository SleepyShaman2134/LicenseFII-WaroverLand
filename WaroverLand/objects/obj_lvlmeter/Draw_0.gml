/// @description Insert description here
// You can write your code in this editor
draw_self();
if(lvl_meter == 1){
	sprite_index = spr_meter1;
	draw_set_color(c_blue);
	draw_text_transformed(x - 120, y + 110, "Power Level", 4, 4, 0);
}

if(lvl_meter == 2){
	sprite_index = spr_meter2;
	draw_set_color(c_yellow);
	draw_text_transformed(x - 120, y + 110, "Power Level", 4, 4, 0);
}

if(lvl_meter == 3){
	sprite_index = spr_meter3;
	draw_set_color(c_red);
	draw_text_transformed(x - 120, y + 110, "Power Level", 4, 4, 0);
}
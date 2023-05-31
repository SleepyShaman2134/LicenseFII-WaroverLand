/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_yellow);
draw_text_transformed(x+80, y+70, rgains, 4, 4, 0);
draw_set_color(c_red);
draw_text_transformed(x-110, y+70, rvigor, 4, 4, 0);

draw_set_color(c_aqua);
draw_text_transformed(x-110, y-150, blocked, 4, 4, 0);

draw_set_color(c_aqua);
draw_text_transformed(x+40, y-150, unit_turn1, 4, 4, 0);
draw_text_transformed(x+70, y-150, unit_turn2, 4, 4, 0);
draw_text_transformed(x+100, y-150, unit_turn3, 4, 4, 0);




/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_set_color(c_black);
//draw_text_transformed(300, 200, chooser, 20, 20, 0);
//draw_text(300, 200, string(chooser));
if(selected == true){
		x = mouse_x;
		y = mouse_y;
}
draw_set_color(c_yellow);
if(tier == 1 && selected == false)
draw_text_transformed(x + 90, y - 90, string(3), 4, 4, 0);
if(tier == 2 && selected == false)
draw_text_transformed(x + 90, y - 90, string(5), 4, 4, 0);
if(tier == 3 && selected == false)
draw_text_transformed(x + 90, y - 90, string(8), 4, 4, 0);
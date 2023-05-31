/// @description Insert description here
// You can write your code in this editor
draw_self();

if(selected == true){
	x = mouse_x;
	y = mouse_y;
}
draw_set_color(c_black);
draw_text_transformed(x, y-300, cardNum, 4, 4, 0);
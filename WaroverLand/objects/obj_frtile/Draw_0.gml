/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_black);
draw_text_transformed(x, y-170, trying, 4, 4, 0);
draw_text_transformed(x - 100, y-170, vari, 4, 4, 0);
if(trying == 1){
	draw_set_color(c_gray);
	draw_text_transformed(x, y-170, trying, 4, 4, 0);
}

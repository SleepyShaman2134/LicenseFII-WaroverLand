/// @description Insert description here
// You can write your code in this editor
draw_self();

if(selected == true){
	x = mouse_x;
	y = mouse_y;
}
if(card_in_hand == true){
	draw_set_color(c_aqua);
	draw_text_transformed(x + 50, y - 110, cardNum, 4, 4, 0);
	//draw_text_transformed(x + 50, y + 110, hovered, 4, 4, 0);
	//draw_text_transformed(x - 50, y + 110, game.notshow, 4, 4, 0);
}
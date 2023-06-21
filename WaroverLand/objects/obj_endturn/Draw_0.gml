/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_aqua);
if(turn == 0){
	draw_text_transformed(x-125, y+130, "Opponent's turn", 4, 4, 0);
}
else{
	draw_text_transformed(x - 125, y+130, "Your turn", 4, 4, 0);
}

draw_text_transformed(x - 125, y-200,  "Turn: ", 4, 4, 0);
draw_text_transformed(x+180, y-200, game.nb_turns, 4, 4, 0);
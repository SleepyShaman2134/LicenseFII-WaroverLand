/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text_transformed(2300, 100, "Score1: ", 4, 4, 0);
draw_text_transformed(2700, 100, score1, 4, 4, 0);

/*draw_text_transformed(100, 200, "valuegp: ", 4, 4, 0);
draw_text_transformed(500, 200, unit_valuegp, 4, 4, 0);

draw_text_transformed(700, 200, "btn_used: ", 4, 4, 0);
draw_text_transformed(1100, 200, button_used, 4, 4, 0);*/

draw_text_transformed(100, 100, "Score2: ", 4, 4, 0);
draw_text_transformed(500, 100, score2, 4, 4, 0);

draw_text_transformed(100, 150, "Gold2: ", 4, 4, 0);
draw_text_transformed(500, 150, gold_op, 4, 4, 0);

draw_text_transformed(100, 200, "Willpower2: ", 4, 4, 0);
draw_text_transformed(500, 200, mana_op, 4, 4, 0);

draw_text_transformed(100, 250, "Discordia2: ", 4, 4, 0);
draw_text_transformed(500, 250, discordia_op, 4, 4, 0);



/*draw_text_transformed(2100, 150, "Card ab: ", 4, 4, 0);
draw_text_transformed(2400, 150, activate_card, 4, 4, 0);*/

/*draw_text_transformed(2100,	200, "check: ", 4, 4, 0);
draw_text_transformed(2400, 200, check, 4, 4, 0);*/

/*draw_text_transformed(100, 100, "trigger: ", 4, 4, 0);
draw_text_transformed(400, 100, abilitytrigger, 4, 4, 0);

draw_text_transformed(100, 250, "turn: ", 4, 4, 0);
draw_text_transformed(400, 250, turn, 4, 4, 0);*/

draw_text_transformed(1400, 100, "Opponent: ", 4, 4, 0);
draw_text_transformed(1800, 100, opponent, 4, 4, 0);

/*draw_text_transformed(700, 150, "debuff_7: ", 4, 4, 0);
draw_text_transformed(1100, 150, debuff_7, 4, 4, 0);*/


if(confirm == 1){
		draw_set_color(c_black);
		draw_text_transformed(1000, 800, "CONFIRMED", 10, 10, 0);
}



if(win == 1){
	draw_set_color(c_black);
	scr_net_set_condition("loser");
	draw_text_transformed(2600, 750, string("WINNER"), 5, 5, 0);
	instance_create_depth(300, 2600, -6, obj_btnend);
}

if(lose == 1){
	draw_set_color(c_black);
	scr_net_set_condition("winner");
	draw_text_transformed(2600, 750, string("LOSER"), 5, 5, 0);
	instance_create_depth(500, 2600, -6, obj_btnend);
}
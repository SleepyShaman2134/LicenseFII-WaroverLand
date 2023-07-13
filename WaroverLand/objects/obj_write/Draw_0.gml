/// @description Insert description here
// You can write your code in this editor
//y=900 x= 200
if(hovered == true){
	draw_self();
}
if(show_abilities == 1)
	draw_set_color(c_black);
	if(ability1_press == 1){
		draw_set_color(c_black);
		//draw_text_transformed(x - 720, y - 750, string(ability1), 2, 2, 0);
		draw_text_ext_transformed(x - 720, y - 750, string(ability1), string_height(ability1),(sprite_get_width(spr_text_box)/3) - 15, 3, 3, 0);
	}
	if(ability2_press == 1){
		draw_set_color(c_black);
		//draw_text_transformed(x - 720, y+200 - 750, string(ability2), 2, 2, 0);
		draw_text_ext_transformed(x - 720, y + 400 - 750, string(ability2), string_height(ability2), (sprite_get_width(spr_text_box)/3) - 15, 3, 3, 0);
	}
	if(ability3_press == 1){
		draw_set_color(c_black);
		//draw_text_transformed(x - 720, y+400 - 750, string(ability3), 2, 2, 0);
		draw_text_ext_transformed(x - 720, y +800 - 750, string(ability3), string_height(ability3), (sprite_get_width(spr_text_box)/3) - 15, 3, 3, 0);
	}
	if(ability4_press == 1){
		draw_set_color(c_black);
		//draw_text_transformed(x - 720, y+600 - 750, string(ability4), 2, 2, 0);
		draw_text_ext_transformed(x - 720, y + 1200 - 750, string(ability4), string_height(ability4), (sprite_get_width(spr_text_box)/3) - 15, 3, 3, 0);
	}
	if(card_press == 1){
		draw_set_color(c_black);
		//draw_text_transformed(x - 720, y - 750, string(card), 2, 2, 0);
		draw_text_ext_transformed(x - 720, y - 750, string(card), string_height(card), (sprite_get_width(spr_text_box)/3) - 15, 3, 3, 0);
	}
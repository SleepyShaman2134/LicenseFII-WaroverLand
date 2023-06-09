/// @description Insert description here
// You can write your code in this editor
card_drawn = false;
selected = false;
card_in_hand = false;
hand_position = 0;
cardNum = 0;

player = obj_player;
deck = obj_deck;
game = obj_game;
meter = obj_lvlmeter;
xPos = 2600;
yPos = 2600;
lord = "euphonim";
hovered = false;
write = instance_create_depth(0, 0, -5, obj_write);

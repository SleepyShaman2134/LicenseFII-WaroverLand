/// @description Insert description here
// You can write your code in this editor

randomise();
score1 = 0;
score2 = 100;
info_units=0;
sprite_units = 0;
nb_of_units = 0;
//for obj_unit
ispressed = 0;
//for obj_unit for abilities for targeting
released = 0;
//for triggering abilities
abilitytrigger = 0;
//for activating abilities
activateability = 0;
//check who used the ability
used_unit = 0;
//the position from units1
used_unit_i = 0;
used_unit_j = 0;
// the position from the room
used_unit_x = 0;
used_unit_y = 0;
//the vigor and gainer/pointer (not needed)
unit_vigor = 0;
unit_valuegp = 0;
//the identifier of the units type based on sprite
sprite_used = 0;
//the tier of the unit
unit_used_tier = 0;
//the race of the used race
unit_used_race = 0;
//information of the race of the units
info_races = 0;
//value to add for the unit
race = 0;
//which button is used
button_used = 0;
//first target of ability
target1 = 0;
target1_ipos = 0;
target1_jpos = 0;
target1_xpos = 0;
target1_ypos = 0;
// second target of ability
target2 = 0;
// setting the turn of one player
turn = 0;
//global turn for abilities of a certain type of unit
trombone_turn = 0;
trumpet_turn = 0;
//anouncement that an opponent has appeared
opponent = 0;
//number of turns
nb_turns = 0;
//gold gain per turn
gold_turn = 0;
//variables for activating a spell
activate_card = 0;
targetunit = 0;
targetuniti = 0;
targetunitj = 0;
targetunitx = 0;
targetunity = 0;
targetstructure = 0;
//level of the empowered spell
meter = 0;
//variable that touches the tiles
affect_tile = 0;
//Debuff of 7th abilty
debuff_7 = 0;
//debuff of 8th ability
debuff_8 = 0;

// tiles
spaces= 0;
units= 0;
gametier = 0;
units1 = 0;
card1 = 0;
i = 0;
j = 0;
xspace = 160;
yspace = 500;
varx = 0;
varj = 0;
vari=0;
varj=0;
tier = 0;
while(i != 6){
	j = 0;
	while (j != 5){
		units1[i][j] = noone;
		if(i == 0 || i == 5){
			spaces[i][j] = instance_create_depth(xspace, yspace, 0, obj_frtile);
			with(spaces[i][j]){
				varx = other.xspace;
				vary = other.yspace;
				varj = other.j;
				vari = other.i;
			}
		}
		if(i == 1 || i == 4){
			spaces[i][j] = instance_create_depth(xspace, yspace, 0, obj_frtile);
			with(spaces[i][j]){
				varx = other.xspace;
				vary = other.yspace;
				varj = other.j;
				vari = other.i;
			}
		}
		if(i == 2 || i == 3){
			spaces[i][j] = instance_create_depth(xspace, yspace, 0, obj_frtile);
			with(spaces[i][j]){
				varx = other.xspace;
				vary = other.yspace;
				varj = other.j;
				vari = other.i;
			}
		}
		xspace += 288;
		j++;
	}
	xspace = 160;
	yspace += 300;
	i++;
}
//scr_initialize_info_cards_abilities();
//scr_initialize_info_heroes();





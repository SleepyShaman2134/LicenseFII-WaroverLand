/// @description Insert description here
// You can write your code in this editor
x = 800;
y = 750;


switch(type){
	case spr_frenchhorn:
		ability1 = "Gain +2/3/4 + 1/2/3 for each adjacent unit";
		ability2 = "Gain +1 + structure power. Target one ally in the formation. It gets +1 vigor";
		ability3 = "Target one free zone from the back formation, move it there and then gain +1/2/3 for each gainer in that formation";
	break;
	
	case spr_tuba:
		ability1 = "-2/3/4 points to the opponent Choose one of the opponent’s gainers. He has a chance to lose -1/2/3 gains based on their remaining vigor, until the end of their turn";
		ability2 = "-1/2/3 to the opponent. -1 for each enemy unit on that column";
		ability3 = "-1/2/3. Push 1 enemy unit and block it if possible";
	break;
	
	case spr_trombone:
		ability1 = " Gain +1/2/3. Gain +1/2/3 gold";
		ability2 = "+1/2/3. -10/9/8 gold; Lower discordia by 1";
		ability3 = "+1/2/3 points. Push one ally unit anywhere in the forward formation Gain +1 gold for each gainer in that formation";
	break;
	
	case spr_trumpet:
		ability1 = "–3/4/5. Target an enemy. It gets blocked one turn";
		ability2 = "-2/3/4";
		ability3 = "-1/2/3. Gain +1/2/3 willpower";
	break;
}

switch(type_card){
	
	case 1:
		card = "Earn 1/3/5 gold based on number of turns passed (when < 5, between 5 and 8 and 8>)";
	break;
	
	case 2:
		card = "Move one unit 1 block away from him and gave a buff to that structure.  It earns +1/+2/+3 power(1/2/3 willpower)";
	break;
	
	case 3:
		card = "+2/3/4 power if alone in the formation (2/3/4 willpower)";
	break;
	
	case 4:
		card = "Move one unit either back or front and gain +1/2/3 vigor if back or +1/2/3 power if front (1/2/3 willpower)";
	break;
	
	case 5:
		card = "Lower the structure of a zone and vigor if there is a unit by -1/2/3 (1/2/3 willpower)";
	break;
	
	case 6:
		card = "Lower discordia by 1 (3 willpower)";
	break;
	
	case 7:
		card = "Your opponent cannot gain points until end of turn (5 willpower)";
	break;
	
	case 8:
		card = "Until end of opponent’s turn raise discordia by 1 if your opponent uses an unit with 0 - 2 power (4 willpower)";
	break;
	
	case 9:
		card = "All your units in one formation gain +1/2 power (4/5 willpower)";
	break;
	
	case 10:
		card = "Negate one debuff (3 willpower)";
	break;
}

switch(type_lord){
	case spr_euphonim:
		ability1 = "1: Remove one of your units, gain 1 willpower and half the gold;"
		ability2 = "2: One unit loses 1 maximum power, gain 1 willpower;";
		ability3 = "Gain 3 discordia. Gain 2 willpower;"
		ability4 ="If discordia is 3 or greater, gain 5 willpower;";
	break;
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_stats(mysprite){
	if(mysprite == spr_frenchhorn){
		if(tiertype == 1){
			vigor = round(random_range(1, 3));
			gains = round(random_range(0, 4));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 2){
			vigor = round(random_range(2, 4));
			gains = round(random_range(1, 4));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 3){
			vigor = round(random_range(3, 5));
			gains = round(random_range(2, 4));
			rvigor = vigor;
			rgains = gains;
		}
	}
	if(mysprite ==spr_tuba){
		if(tiertype == 1){
			vigor = round(random_range(1, 3));
			gains = round(random_range(1, 3));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 2){
			vigor = round(random_range(2, 4));
			gains = round(random_range(2, 3));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 3){
			vigor = round(random_range(3, 5));
			gains = round(random_range(3, 3));
			rvigor = vigor;
			rgains = gains;
		}
	}
	if(mysprite == spr_trombone){
		if(tiertype == 1){
			vigor = round(random_range(1, 5));
			gains = round(random_range(0, 3));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 2){
			vigor = round(random_range(2, 5));
			gains = round(random_range(1, 3));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 3){
			vigor = round(random_range(3, 5));
			gains = round(random_range(2, 3));
			rvigor = vigor;
			rgains = gains;
		}
	}
	if(mysprite == spr_trumpet){
		if(tiertype == 1){
			vigor = round(random_range(1, 3));
			gains = round(random_range(2, 3));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 2){
			vigor = round(random_range(2, 3));
			gains = round(random_range(2, 3));
			rvigor = vigor;
			rgains = gains;
		}
		if(tiertype == 3){
			vigor = round(random_range(3, 3));
			gains = round(random_range(2, 3));
			rvigor = vigor;
			rgains = gains;
		}
	}
	if(ipos > 2){
		buffer_seek(obj_client.client_buffer, buffer_seek_start, 0);

		buffer_write(obj_client.client_buffer, buffer_u8, network.set_unit);
		buffer_write(obj_client.client_buffer, buffer_u8, cardNum);
		buffer_write(obj_client.client_buffer, buffer_u8, vigor);
		buffer_write(obj_client.client_buffer, buffer_u8, gains);
		buffer_write(obj_client.client_buffer, buffer_u8, ipos);
		buffer_write(obj_client.client_buffer, buffer_u8, jpos);
		buffer_write(obj_client.client_buffer, buffer_u8, tiertype);
		network_send_packet(obj_client.client, obj_client.client_buffer, buffer_tell(obj_client.client_buffer));
	}
}
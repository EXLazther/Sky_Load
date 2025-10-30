switch(room)
{
	case Room_fortIsland2:	
	if(ds_map_exists(global.text_setted,"event_26")&&!ds_map_exists(global.text_setted,"event_28"))
	{
		x=1196;
		y=224;
		text_id="talk_2_4";
	}
	else if(ds_map_exists(global.text_setted,"event_28")&&!ds_map_exists(global.text_setted,"event_30"))
	{
		x=590;
		y=320;
		text_id="talk_2_6";
	}
	else
	{
		x=-60;
		y=-60;
	}
	break;
	
	case Room_fortIsland3:
	if(!ds_map_exists(global.text_setted,"event_30"))
	{
		x=650;
		y=204;
		text_id="talk_2_8";
	}
	else
	{
		x=-60;
		y=-60;
	}
	break;
	
	case Room_fortIsland_atrie:
	if(ds_map_exists(global.text_setted,"event_27")&&!ds_map_exists(global.text_setted,"event_28"))
	{
		x=352;
		y=320;
	}
	else if(ds_map_exists(global.text_setted,"event_34")&&Obj_Player.set_remove_number==1)
	{
		x=289;
		y=418;
	}
	else
	{
		x=-60;
		y=-60;
	}
}
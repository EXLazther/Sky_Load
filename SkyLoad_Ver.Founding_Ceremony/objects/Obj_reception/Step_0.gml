if(ds_map_exists(global.text_setted,"event_30")&&!ds_map_exists(global.text_setted,"event_32"))
{
	text_id="talk_2_9";
}
else if(ds_map_exists(global.text_setted,"event_33")&&ds_map_exists(global.text_setted,"event_34"))
{
	text_id="talk_2_10";
}
else
{
	text_id="talk_2_11";
}
var _s = id; 
if(place_meeting(x-20,y+60, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox))
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
}
if(place_meeting(x+20,y+60, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox))
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
}
/*if (x == 352 && y== 352) {
	    mob_x = 580;
	    mob_y = 384;
	    move_mob( mob_x, mob_y, 1);
}
if instance_exists(Obj_textbox)
{
	speed=0;
}
if speed==0&&!instance_exists(Obj_textbox)
{
	move_towards_point(mob_x,mob_y,1);
}

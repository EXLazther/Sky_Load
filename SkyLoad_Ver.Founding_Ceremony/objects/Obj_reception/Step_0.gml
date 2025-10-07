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
var _s=id
if(!instance_exists(m_ScrObjMoveInter))
{
	if(ds_map_exists(global.text_setted,"event_34")&&ds_map_exists(global.text_setted,"event_35"))
	{
		text_id="talk_2_12";
	}
	if place_meeting(x +10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
			m_scr_game_text(_s.text_id,_s.system_id);
			}
		
	}
	if place_meeting(x -10,y-10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
			with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
				m_scr_game_text(_s.text_id,_s.system_id);
			}
	}
}
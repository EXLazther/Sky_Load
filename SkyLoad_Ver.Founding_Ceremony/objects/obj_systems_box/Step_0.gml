var _s = id; 

if place_meeting(x +10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)
	{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
		m_scr_game_text(_s.text_id,_s.system_id);
		}
	}
	
	

if place_meeting(x -10,y-10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)
	{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
		m_scr_game_text(_s.text_id,_s.system_id);
		}
	}
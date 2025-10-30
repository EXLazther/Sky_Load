var _s = id; 
if place_meeting(x,y, Obj_Player) &&!instance_exists(Obj_textbox)
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
	{
		m_scr_game_text(_s.text_id,_s.system_id);
	}
	instance_destroy();
}
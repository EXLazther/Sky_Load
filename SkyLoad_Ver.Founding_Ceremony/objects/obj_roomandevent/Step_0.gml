var _s = id; 
if place_meeting(x,y, Obj_Player) &&!instance_exists(Obj_textbox)&&end_text==0
{
	end_text=2;
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
	{
		m_scr_game_text(_s.text_id,_s.system_id);
	}
}

if !instance_exists(Obj_textbox)&&end_text==2
{
	end_text=1
}

if end_text==1&& !instance_exists(Obj_changeroom)
	{
		var inst=instance_create_depth(0,0,-9999,Obj_changeroom);
		inst.target_x=target_x;
		inst.target_y=target_y;
		inst.target_rm=target_rm;
		inst.target_face=target_face;
	}
	
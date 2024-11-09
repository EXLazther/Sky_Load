var _s = id; 
if place_meeting(x,y, Player) &&!instance_exists(obj_textbox)&&end_text==0
{
	end_text=2;
	with( instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_s.text_id,_s.system_id);
	}
}

if !instance_exists(obj_textbox)&&end_text==2
{
	end_text=1
}

if end_text==1&& !instance_exists(Object_changeroom)
	{
		room_goto(Title);
	}
	
var _s = id; 

if place_meeting(x +10,y+10, Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(obj_textbox)
	{
	with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
		scr_game_text(_s.text_id,_s.system_id);
		}
	}
	
	

if place_meeting(x -10,y-10, Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(obj_textbox)
	{
	with( instance_create_depth(0, 0, -9999, obj_textbox))
		{
		scr_game_text(_s.text_id,_s.system_id);
		}
	}
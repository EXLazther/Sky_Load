var _s = id; 
if place_meeting(x,y, Obj_Player) &&!instance_exists(Obj_textbox)&&end_text==0
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
		m_scr_game_text(_s.text_id,_s.system_id);
		}
		end_text=2;
}

if !instance_exists(Obj_textbox)&&end_text==2
{
	end_text=1
}

if end_text==1&& !instance_exists(Obj_changeroom)
	{
		if (variable_global_exists("text_setted")) ds_map_destroy(global.text_setted);
					if (variable_global_exists("set_battle")) ds_map_destroy(global.set_battle);
					if (variable_global_exists("wall_setted")) ds_map_destroy(global.wall_setted);
					if (variable_global_exists("item_gat")) ds_map_destroy(global.item_gat);
					var inst = instance_create_depth(0, 0, -9999, Obj_changeroom);
					inst.target_x = 0;
					inst.target_y = 0;
					inst.target_rm = Room_Title;
	}
	
var _s = id; 
if place_meeting(x +10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)
{
	if(item_foryou==0)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
		if(item_foryou==0)
		{
			m_item_add(item); // アイテムをインベントリに追加
			ds_map_add(global.item_gat, instance_setid,true );
			item_foryou+=1;
		}
	}
	else
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id_after,_s.system_id);
		}
	}
}
	
	

if place_meeting(x -10,y-10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)
{
	if(item_foryou==0)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
		if(item_foryou==0)
		{
			m_item_add(item); // アイテムをインベントリに追加
			ds_map_add(global.item_gat, instance_setid,true );
			item_foryou+=1;
		}
	}
	else
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id_after,_s.system_id);
		}
	}
}

m_set_symbolindex(sprite_id);

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

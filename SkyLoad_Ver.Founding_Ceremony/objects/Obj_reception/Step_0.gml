image_index=0;
var _s = id; 
var Player=instance_find(Obj_Player,0);
if(!ds_map_exists(global.text_setted,"event_30"))
{
	text_id="event_30";
	set_event=true;
}
if(ds_map_exists(global.text_setted,"event_30")&&!ds_map_exists(global.text_setted,"event_32"))
{
	text_id="talk_2_9";
}
if(ds_map_exists(global.text_setted,"event_30")&&Player!=noone &&Player.set_remove_number==1)
{
	text_id="event_34";
	set_event=true;
}
if(ds_map_exists(global.text_setted,"event_34"))
{
	text_id="talk_2_10"
	set_event=false;
	set_text_move=0;
}
if(place_meeting(x-10,y+30, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&end_text==0)
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
		if(set_event=true)
		{
			end_text=2;
		}
		else
		{
			end_text=3;
		}
}
if(place_meeting(x+10,y+30, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&end_text==0)
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
		
		if(set_event=true)
		{
			end_text=2;
		}
		else
		{
			end_text=3;
		}
}
if !instance_exists(Obj_textbox)&&end_text==2
{
	end_text=1;
}

if end_text==1&&set_text_type==0&&!instance_exists(Obj_changeroom)
{
		var inst=instance_create_depth(0,0,-9999,Obj_changeroom);
		inst.target_x=target_x;
		inst.target_y=target_y;
		inst.target_rm=target_rm;
		inst.target_face=target_face;
		end_text=3;
		set_text_move=0;
}

if end_text==1&&set_text_type==1
{
		map_objmove_setevent(event_id);	
		end_text=3;

}

if end_text==1&&set_text_type==2&&!instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
	{
		m_scr_game_text(_s.text_id1,"2");
	}
	end_text=3;
}

if(end_text==3&&!instance_exists(Obj_textbox))
{
	if(set_text_move>0)
	{
		switch(set_text_move)
		{
			case 1:
			set_text_type=2;
			end_text=1;
			break;
		
			case 2:
			set_text_type=1;
			end_text=1;
			break;
		}
	}
	if(set_text_move==0)
	{
		if(set_event=true)
		{
			set_event=false;
		}
		ds_map_add(global.text_setted, text_id,true );
	}
}
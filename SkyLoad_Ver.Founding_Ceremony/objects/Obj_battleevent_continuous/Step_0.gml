var _s = id; 
if(global.continuous==true&&!instance_exists(Obj_battleevent)&&!instance_exists(ObjBattleChangeRoom))
{
	if place_meeting(x,y, Obj_Player) &&!instance_exists(Obj_textbox)&&end_text==0
	{
		end_text=2;
		with(instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id,_s.system_id);
		}
	}
	if !instance_exists(Obj_textbox)&&end_text==2
	{
		end_text=1;
	}
	//会話後ルーム移動
	if end_text==1&&set_text_type==0&&!instance_exists(Obj_changeroom)&&!instance_exists(Obj_textbox)
	{

			b_remember_room();
			var inst=instance_create_depth(0,0,-9999,ObjBattleChangeRoom);
			inst.target_rm=target_rm;
			inst.target_enemy = target_enemy;
			end_text=3;
			set_text_move=1;
	}

	//会話後キャラクター操作
	if end_text==1&&set_text_type==1
	{
			map_objmove_setevent(event_id);	
			end_text=3;

	}
	//会話後会話
	if end_text==1&&set_text_type==2&&!instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id1,"2");
		}
		end_text=3;
	}
	//会話後アイテム入手
	if end_text==1&&set_text_type==3&&!instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
		if(item_foryou==0)
		{
			m_item_add(item); // アイテムをインベントリに追加
			item_foryou+=1;
		}
		else
		{
			with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
				m_scr_game_text("item",_s.system_id);
			}
		}
		end_text=3;
	}
	if(end_text==3&&!instance_exists(Obj_textbox))
	{
		if(set_text_move>0)
		{
			switch(set_text_move)
			{
				case 1://会話
				set_text_type=2;
				end_text=1;
				break;
		
				case 2://オブジェクト操作
				set_text_type=1;
				end_text=1;
				break;
				case 3://room移動
				set_text_type=0;
				end_text=1;
				break;
				case 4://アイテム収得
				set_text_type=3;
				end_text=1;
				break;
			}
		}
		if(set_text_move==0)
		{
			ds_map_add(global.text_setted, text_id,true );
			global.continuous=false
		}
	}
}

if(global.continuous==false&&!instance_exists(Obj_battleevent)&&!instance_exists(ObjBattleChangeRoom))
{
	if place_meeting(x,y, Obj_Player) &&!instance_exists(Obj_textbox)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
			m_scr_game_text(_s.text_id2,_s.system_id);
		}
		instance_destroy();
		ds_map_add(global.text_setted, text_id2,true );
	}
}
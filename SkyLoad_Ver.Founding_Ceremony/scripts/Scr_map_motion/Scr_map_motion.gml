function m_wall_event(_id)
{
	ds_map_add(global.wall_setted,_id,true);
}	
function map_objmove_interpolation(_start_x, _start_y, _target_x, _target_y, _frame, _type,_target_id)
{
	// オブジェクトを補完法で移動
	var _obj = instance_create_layer(0, 0, "Instances", m_ScrObjMoveInter);//専用オブジェクトスポーン
	_obj.start_x = _start_x;
	_obj.start_y = _start_y;
	_obj.target_x = _target_x;
	_obj.target_y = _target_y;
	_obj.frame = _frame;
	_obj.type = _type;
	_obj.target_inst = _target_id;
}
function map_objmove_setevent(_event_id)
{
	
	switch(_event_id)
	{
		//1章
		case "event_1_1":
		instance_create_layer(0,0,"Instances",Obj_flash);
		Obj_flash.set_type=1;
		Obj_flash.set_alpha=1;
		Obj_flash.set_flash=0.005;
		Obj_anyevent.set_text_move=0;
		break;
		case "event_1_2":
			instance_create_layer(629,-60,"Instances",Obj_isaku);
			map_objmove_interpolation(672,60,672,250,90,0,Obj_isaku);
			Obj_anyevent.set_text_move=1;
			break;
		
		case "event_1_3":
			if(instance_exists(Obj_isaku))
			{
				instance_destroy(Obj_isaku)
			}
			Obj_set_remove_event.text_id1="event_17_5";
			Obj_set_remove_event.set_text_move=1;
			break;
		//2章
		case "event_1":
		var _objrian=instance_create_layer(629,-60,"Instances",Obj_story_symbol);
		var _objrean=instance_create_layer(710,-60,"Instances",Obj_story_symbol);
			_objrean.set_index="jji";
			_objrian.set_index="guruka";
			Obj_anyevent.set_symbol[0]=_objrian;
			Obj_anyevent.set_symbol[1]=_objrean;
			map_objmove_interpolation(_objrean.x, _objrean.y, _objrean.x, Obj_Player.y-100, 60, 0, _objrean);
			map_objmove_interpolation(_objrian.x, _objrian.y, _objrian.x, Obj_Player.y-100, 60, 0, _objrian);
			Obj_anyevent.set_text_move=1;
		break;
		case "event_2":
		
		for(var i=0;i<array_length(Obj_anyevent.set_symbol);i++)
		{
			var _inst=Obj_anyevent.set_symbol[i]
			map_objmove_interpolation(_inst.x,Obj_Player.y-100, _inst.x, -60, 120, 0,_inst);
			set_timer(instance_destroy,[_inst],180,1);
		}
		Obj_anyevent.set_text_move=0;
		break;
		
		case "event_3":
		map_objmove_interpolation(Obj_rean.x,Obj_rean.y,94,Obj_rean.y,60,0,Obj_rean);
		map_objmove_interpolation(Obj_rian.x,Obj_rian.y,Obj_rian.x,160,60,0,Obj_rian);
		map_objmove_interpolation(Obj_Player.x,Obj_Player.y,Obj_Player.x,160,80,0,Obj_Player);
		set_timer(map_objmove_interpolation,[94,Obj_rean.y,94,160,60,0,Obj_rean],60,1);
		set_timer(map_objmove_interpolation,[Obj_rian.x,160,224,160,60,0,Obj_rian],60,1);
		set_timer(map_objmove_interpolation,[Obj_Player.x,160,Obj_jji.x,160,60,0,Obj_Player],80,1);
		Obj_anyevent.set_text_move=1;
		break;

		case "event_4":
		map_objmove_interpolation(94,160,286,160,60,0,Obj_rean);
		set_timer(map_objmove_interpolation,[224,160,286,160,60,0,Obj_rian],60,1);
		set_timer(map_objmove_interpolation,[286,160,286,450,60,0,Obj_rian],120,1);
		set_timer(map_objmove_interpolation,[286,160,286,450,60,0,Obj_rean],60,1);
		Obj_anyevent.text_id1="event_29_1";
		Obj_anyevent.set_text_move=1;
		break;

		case "event_5":
			map_objmove_interpolation(Obj_rean.x,Obj_rean.y,342,Obj_rean.y,60,0,Obj_rean);
			set_timer(map_objmove_interpolation,[Obj_rian.x,Obj_rian.y,342,Obj_rian.y,60,0,Obj_rian],30,1);
			set_timer(map_objmove_interpolation,[342,Obj_rean.y,342,-60,60,0,Obj_rean],60,1);
			set_timer(map_objmove_interpolation,[342,Obj_rian.y,342,-60,60,0,Obj_rian],90,1);
			Obj_reception.set_text_move=0;
		break;
		
		case "event_6":
			map_objmove_interpolation(0,204,Obj_Player.x-60,204,60,0,Obj_rean);
			set_timer(map_objmove_interpolation,[0,236,Obj_Player.x-60,236,60,0,Obj_rian],30,1);
			Obj_reception.set_text_move=1;
			Obj_Player.fase=LEFT;
			Obj_reception.event_id="event_7";
			break;
		
		case "event_7":
			map_objmove_interpolation(Obj_Player.x-60,236,587,236,5,0,Obj_rian);
			set_timer(map_objmove_interpolation,[Obj_Player.x-60,204,587,204,5,0,Obj_rean],5,1);
			set_timer(map_objmove_interpolation,[587,236,587,837,120,0,Obj_rian],5,1);
			set_timer(map_objmove_interpolation,[587,204,587,837,120,0,Obj_rean],30,1);
			Obj_reception.set_text_move=0;
			break;
			
		case "event_8":
			map_objmove_interpolation(289,418,289,160,30,0,Obj_rean);
			set_timer(map_objmove_interpolation,[289,418,289,160,30,0,Obj_rian],30,1);
			set_timer(map_objmove_interpolation,[289,160,94,160,30,0,Obj_rean],30,1);
			set_timer(map_objmove_interpolation,[289,160,224,160,30,0,Obj_rian],60,1);
			Obj_set_remove_event.set_text_move=1;
			break;
		
		case "event_9":
			var _objrian1=instance_create_layer(Obj_Player.x+40,0,"Instances",Obj_story_symbol);
			var _objrean1=instance_create_layer(Obj_Player.x-40,0,"Instances",Obj_story_symbol);
			_objrean1.set_index="jji";
			_objrian1.set_index="guruka";
			map_objmove_interpolation(_objrean1.x,_objrean1.y,_objrean1.x,Obj_Player.y-40,60,0,_objrean1);
			map_objmove_interpolation(_objrian1.x,_objrian1.y,_objrian1.x,Obj_Player.y-40,60,0,_objrian1);
			Obj_set_remove_event.set_text_move=1;
			break;
		case "no_move":
			if(!instance_exists(Obj_anyevent)&&instance_exists(Obj_set_remove_event))
			{
				Obj_set_remove_event.set_text_move=0;
			}
			else if(!instance_exists(Obj_set_remove_event)&&instance_exists(Obj_anyevent))
			{
				Obj_anyevent.set_text_move=0;
			}
			break;
			
		case "flash":
			instance_create_layer(0,0,"Instances",Obj_flash);
			Obj_flash.set_type=2;
			Obj_flash.set_alpha=0;
			Obj_anyevent.set_text_move=1;
			break;
		case "wait":
			Obj_anyevent.set_text_move=3;
			break;
		case "fortisland_test":
			Obj_anyevent.set_text_move=1;
			break;
		}
}
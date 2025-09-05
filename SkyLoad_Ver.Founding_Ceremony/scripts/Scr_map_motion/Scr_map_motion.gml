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
		case "event_1":
		set_timer(map_objmove_interpolation,[Obj_Player.x, Obj_Player.y, Obj_Player.x, Obj_Player.y+100, 60, 0, Obj_Player],0,1);
		var _mob = instance_create_layer(Obj_Player.x, 845, "Instances", Obj_mob);
		set_timer(map_objmove_interpolation,[_mob.x, _mob.y, Obj_Player.x, Obj_Player.y+220, 120, 0, _mob],120,1);
		break;
		case "event_2":
		map_objmove_interpolation(Obj_Player.x,Obj_Player.y,Obj_Player.x,Obj_Player.y+100,120,0,Obj_Player);
		map_objmove_interpolation(Obj_mob.x,Obj_mob.y,Obj_mob.x,845,120,0,Obj_mob);
		break;
	}
}
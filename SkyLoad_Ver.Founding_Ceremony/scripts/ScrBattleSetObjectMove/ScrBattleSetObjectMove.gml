function bset_objmove_interpolation(_start_x, _start_y, _target_x, _target_y, _frame, _type)
{
	// オブジェクトを補完法で移動
	var _obj = instance_create_layer(0, 0, "Instances", ScrObjMoveInter);//専用オブジェクトスポーン
	_obj.start_x = _start_x;
	_obj.start_y = _start_y;
	_obj.target_x = _target_x;
	_obj.target_y = _target_y;
	_obj.frame = _frame;
	_obj.type = _type;
	_obj.target_inst = self.id;
	
}

function bset_objEnemy_changeState(_tx=288,_ty=150,_frame=40,_wait=20,_type=2){
	bset_objmove_interpolation(x, y, _tx, _ty, _frame, _type)
	bset_objEnemy_idle(_frame + _wait)
}		

function bset_objEnemy_idle(_frame=0){
	is_idle = true;
	alarm[0] = _frame
}


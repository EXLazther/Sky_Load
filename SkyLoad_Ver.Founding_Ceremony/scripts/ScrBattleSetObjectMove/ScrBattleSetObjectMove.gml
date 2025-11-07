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

function bset_objEnemy_changeState(_tx=BORDER.CX,_ty=BORDER.CY-100,_frame=20,_wait=10,_type=2){
	bset_objmove_interpolation(x, y, _tx, _ty, _frame, _type)
	bset_objEnemy_idle(_frame + _wait)
}		

function 
bset_objEnemy_generalMove(
_frame,
_left = 120,
_right = BORDER.R-120,
_up = 80,
_bottom = BORDER.B+200
)
{
	bset_objmove_interpolation(x,y,random_range(_left,_right), random_range(_up,_bottom),_frame, INTERPOLATION_TYPE.ACCELE_DEACCELE)	
}

function bset_objEnemy_idle(_frame=0){
	is_idle = true;
	alarm[0] = _frame
}


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

function bget_angle_enemy_to_player(_enemy_instance)
{
	return point_direction(_enemy_instance.x, _enemy_instance.y, ObjBattlePlayer.x, ObjBattlePlayer.y);
}
function shot_create(_xorigin = 0, _yorigin = 0, _speed = 0, _angle = 0, _id = 0)
{
	
	var _shot = instance_create_layer(_xorigin, _yorigin, "Instances", shot_get_object(_id));
	_shot.speed = _speed;
	_shot.direction = _angle;
	if(_shot == ObjBattleEnemyClaw){
		_shot.image_angle = _shot.direction + 90;
	}
	// 弾を作成し速度と角度を初期化
	
	return _shot;
	

}

function shot_create_circle	(_xorigin = 0, _yorigin = 0, _speed = 0, _angle = 0, _ways = 1, _id = 0)
{
	
	var _shot[];
	
	for (var _i = 0; _i < _ways; _i++;){
		_shot[_i] = shot_create(_xorigin, _yorigin, _speed, _angle+360/_ways*_i, _id);
		//　円形になるようにshot_createを実行
	}
	
	return _shot;
}

function shot_create_ways(_xorigin = 0, _yorigin = 0, _speed = 0, _base_angle = 0, _ways = 1, _angle_interval = , _id = 0)
{
	
	var _shot[];
	var _start_angle = _base_angle - (_angle_interval * (_ways - 1)) / 2;
	
	for (var _i = 0; _i < _ways; _i++){
		var _angle = _start_angle + _angle_interval * _i;
		_shot[_i] = shot_create(_xorigin, _yorigin, _speed, _angle, _id);
		// 扇形になるようにshot_createを実行
	}
	
	return _shot;
}



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

function shot_create_ways(_xorigin = 0, _yorigin = 0, _speed = 0, _base_angle = 0, _ways = 1, _angle_interval = 0, _id = 0)
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

function laser_create_shoot(_xorigin = 0, _yorigin = 0, _speed = 0, _angle = 0, _width = 1, _length = 10, _charge_speed = 1, _id = 0){
	
	var _laser = shot_create(_xorigin, _yorigin, 0, _angle, _id);
	_laser.target_xscale = _length;
	_laser.yscale = _width;
	_laser.charge_speed = _charge_speed;
	_laser.move_speed = _speed;
	
	return _laser;
	
}

function laser_create_shoot_circle(_xorigin = 0, _yorigin = 0, _speed = 0, _angle = 0, _ways= 1 , _width = 1, _length = 10, _charge_speed = 1, _id = 0){
	
	var _laser[];
	
	for (var _i = 0; _i < _ways; _i++;){
		_laser[_i] = laser_create_shoot(_xorigin, _yorigin, _speed, _angle+360/_ways*_i, _width, _length, _charge_speed, _id);
		//　円形になるようにshot_createを実行
	}
	
	return _laser;
}
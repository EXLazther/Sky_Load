function shot_create(_xorigin, _yorigin, _id, _speed, _angle, _se_id = noone)
{
	var _shot = instance_create_layer(_xorigin, _yorigin, "Instances", shot_get_object(_id));
	_shot.speed = _speed;
	_shot.direction = _angle;
	se_play(_se_id);
	return _shot;
}

function shot_create_offset_polar(_xorigin, _yorigin, _radius, _degree, _id, _speed, _angle_offset, _se_id = noone){
	var _shot = shot_create(_xorigin+cosdeg(_degree)*_radius, _yorigin+sindeg(_degree)*_radius,  _id, _speed, -_degree-_angle_offset);
	se_play(_se_id);
	return _shot;
}

function shot_create_offset_rectangular(_xorigin, _yorigin, _x_offset, _y_offset, _id, _speed, _angle, _se_id = noone){
	var _shot = shot_create(_xorigin+_x_offset, _yorigin+_x_offset, _id, _speed, _angle);
	se_play(_se_id);
	return _shot;
}


function shot_create_circle	(_xorigin = 0, _yorigin = 0, _id = 0, _speed = 0, _angle = 0, _ways = 1, _radius = 0, _angle_offset = 0, _se_id = noone)
{	
	var _shot[];
	
	for (var _i = 0; _i < _ways; _i++;){
		_shot[_i] = shot_create(_xorigin+_radius*cosdeg(_angle+360/_ways*_i), _yorigin+_radius*sindeg(_angle+360/_ways*_i), _id, _speed, -_angle-360/_ways*_i-_angle_offset);
	}
	se_play(_se_id);
	return _shot;
}

function shot_create_ways(_xorigin = 0, _yorigin = 0, _id = 0, _speed = 0, _base_angle = 0, _ways = 1, _angle_interval = 0, _se_id = noone)
{
	var _shot[];
	var _start_angle = _base_angle - (_angle_interval * (_ways - 1)) / 2;
	
	for (var _i = 0; _i < _ways; _i++){
		var _angle = _start_angle + _angle_interval * _i;
		_shot[_i] = shot_create(_xorigin, _yorigin, _id, _speed, _angle);
	}
	
	se_play(_se_id);
	return _shot;
}


function laser_create_shoot(_xorigin = 0, _yorigin = 0, _id = 0, _speed = 0, _angle = 0, _width = 1, _length = 10, _charge_speed = 1, _se_id = noone)
{
	var _laser = shot_create(_xorigin, _yorigin, _id, 0, _angle);
	_laser.target_xscale = _length;
	_laser.yscale = _width;
	_laser.charge_speed = _charge_speed;
	_laser.move_speed = _speed; // 引数の _speed はここで使用
	
	se_play(_se_id);
	return _laser;
}

function laser_create_shoot_circle(_xorigin = 0, _yorigin = 0, _id = 0, _speed = 0, _angle = 0, _ways= 1 , _width = 1, _length = 10, _charge_speed = 1, _se_id = noone)
{
	var _laser[];
	
	for (var _i = 0; _i < _ways; _i++;){
		// 内部の laser_create_shoot 呼び出しを修正
		_laser[_i] = laser_create_shoot(_xorigin, _yorigin, _id, _speed, _angle+360/_ways*_i, _width, _length, _charge_speed);
	}
	
	se_play(_se_id);
	return _laser;
}
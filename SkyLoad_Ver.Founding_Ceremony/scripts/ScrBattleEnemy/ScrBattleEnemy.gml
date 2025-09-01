enum ENEMY_STATE {
	IDLE,
	PATTERN_1,
	PATTERN_2,
	PATTERN_3,
	PATTERN_4,
	PATTERN_5,
	PATTERN_6,
	PATTERN_7,
	PATTERN_8,
	PATTERN_9,
	PATTERN_10,
	PATTERN_11,
	PATTERN_12,
	PATTERN_13,
	PATTERN_14
}

function set_enemy_idle(_frame){
	
	var _obj = instance_create_layer(0,0,"Instances",ScrObjEnemyWait)
	_obj.frame_wait = _frame
	
	
}
	
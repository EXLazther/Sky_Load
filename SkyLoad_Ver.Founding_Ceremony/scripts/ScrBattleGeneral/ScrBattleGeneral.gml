function shot_get_object (_id) //ショットIDを取得
{
	return global.enemy_shot[_id]
}

function set_timer (_method, _arguments, _interval, _repeat) //タイマー（一定フレーム後に動作する）を設定
{
	if (!is_array(_arguments))
	{
		_arguments = [_arguments];
	}
	//　タイムソースを作成
	var _ts1 = 
	time_source_create
	(
	time_source_game, 
	_interval, 
	time_source_units_frames, 
	_method,
	_arguments, //スクリプト関数に渡された引数をメソッドの引数としてそのまま渡す
	_repeat,
	time_source_expire_nearest
	);
	
	time_source_start(_ts1);
	return _ts1;
}	

function set_spell (_text)
{
	var _inst = instance_create_layer(0,0,"Instances",ScrObjSetSpell);
	_inst.spell_name = _text;
}


function se_play(_se)
{
	if(_se != noone){
		audio_play_sound(_se,90,0)
	}
}
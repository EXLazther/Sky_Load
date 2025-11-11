function shot_get_object (_id) //ショットIDを取得
{
	return global.enemy_shot[_id]
}

function set_timer (_method, _arguments, _interval, _repeat) 
{
	if (!is_array(_arguments))
	{
		_arguments = [_arguments];
	}

	if (_interval <= 0)
	{
		// _repeat が 0 回なら何もしない
		if (_repeat <= 0) {
			return undefined; 
		}

		// _repeat 回、即座にメソッドを実行する (同期処理)
		for (var i = 0; i < _repeat; i++)
		{
			// method_execute は引数配列を期待する
			script_execute_ext(_method, _arguments);
		}
		
		// タイムソースは作成していないため undefined を返す
		return undefined;
	}
	
	//　タイムソースを作成
	var _ts1 = 
	time_source_create
	(
	time_source_game, 
	_interval, // 1以上であることが保証されている
	time_source_units_frames, 
	_method,
	_arguments, 
	_repeat,
	time_source_expire_nearest
	);
	
	time_source_start(_ts1);
	return _ts1; // 作成したタイマーIDを返す
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
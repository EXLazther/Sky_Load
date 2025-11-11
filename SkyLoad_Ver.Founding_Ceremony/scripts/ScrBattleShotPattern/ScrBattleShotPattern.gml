function shot_pattern(_method, _arguments, _interval, _first_frame_execute = true){
	
	if (!is_array(_arguments))
	{
		_arguments = [_arguments];
	}

	// 【修正】ゼロ除算を防ぐためのチェック
	if (_interval <= 0)
	{
		// intervalが0の場合、%計算は行わず、
		// 最初のフレームでのみ実行する（許可されている場合）
		if (_first_frame_execute == true && current_frame == 1)
		{
			script_execute_ext(_method, _arguments);
		}
		return; // %計算に進ませない
	}
	
	// --- _interval が 1 以上の場合の従来処理 ---
	if(_first_frame_execute == true){
	
		if (current_frame % _interval == 0 || current_frame == 1){
			script_execute_ext(_method, _arguments)
		}
		
	}else{
		
		if (current_frame % _interval == 0){
			script_execute_ext(_method, _arguments)
		}
		
	}
	
}

function shot_pattern2(_method, _arguments, _interval, _times, _pattern_interval, _initialize_method = function(){}, _first_frame_execute = true){
	
	var _pattern = function(_method, _arguments, _interval, _times, _initialize_method)
	{
		// 1. 初期化処理の実行（これは interval=0 なので undefined が返る）
		var _initialize_timer = set_timer(_initialize_method, [], 0, 1);
		
		// 【重要】戻り値が undefined でないかチェック
		if (_initialize_timer != undefined) {
			array_push(my_timer_ids, _initialize_timer);
		}
		
		
		// 2. メインパターンの実行
		var _pattern_timer = set_timer(_method, _arguments, _interval, _times);
		
		// 【重要】戻り値が undefined でないかチェック
		if (_pattern_timer != undefined) {
			array_push(my_timer_ids, _pattern_timer);
		}
	}
	
	var _args_for_pattern = [_method, _arguments, _interval, _times, _initialize_method];
	shot_pattern(_pattern, _args_for_pattern, _pattern_interval, _first_frame_execute)
}
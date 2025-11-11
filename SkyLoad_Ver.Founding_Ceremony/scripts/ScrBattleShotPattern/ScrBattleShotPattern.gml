function shot_pattern(_method, _arguments, _interval, _first_frame_execute = true){
	
	if (!is_array(_arguments))
		{
			_arguments = [_arguments];
		}
	
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
		var _initialize_timer = set_timer(_initialize_method, [], 0, 1);
		array_push(my_timer_ids, _initialize_timer);
		
		var _pattern_timer = set_timer(_method, _arguments, _interval, _times)
		array_push(my_timer_ids, _pattern_timer);
		
		
	}
	
	var _args_for_pattern = [_method, _arguments, _interval, _times, _initialize_method];
	shot_pattern(_pattern, _args_for_pattern, _pattern_interval, _first_frame_execute)
	
	
	
	
	
}
// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function TestNormal3(){
	
	if(current_frame % 180 == 0 || current_frame == 1){
		
		var _shot_pattern1 = function(){
			
			var _angle = random_range(0,360)
			var _shot_position = get_pentagram_edge_points(10,x,y,80,_angle)
			
			
			for (var i = 0; i < array_length(_shot_position); i++;){
				
				var _point = _shot_position[i];
				var _shot1 = shot_create(_point.x,_point.y,0,_angle,SHOT_ID.BALL_YELLOW)
				
				//移動処理
				shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,0.02+i*0.0005,60+i)
				shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,0,120+i)
				
				
				
				_angle += 12 
			
			}
			
			audio_play_sound(shot1,1,0)
		}
		
		var _move = function(){
			bset_objEnemy_generalMove(40)
		}
		
		var _se = function(){
			audio_play_sound(kira,1,0)
		}
		
		
		_shot_pattern1()
		set_timer(_se, [],60,1)
		move_timer = set_timer(_move, [], 95,1)
		d1 *= -1;
		
		array_push(my_timer_ids,move_timer)
		
		
	}
	
}
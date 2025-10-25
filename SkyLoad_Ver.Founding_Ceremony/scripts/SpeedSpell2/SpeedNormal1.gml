// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function SpeedNormal1(){
	
	if(current_frame % 60 == 0){
		
		var _pattern1 = function(){
			
			angle1 = random_range(80,100)
			
			for (var i = 0; i < 5; i++;)
			{
				var _shot1 = shot_create_ways(x,y,8+i/3,angle1,8,10,SHOT_ID.SQUARE_RED);
				shot_set_reflect(_shot1, true, [1,0,0,0],1);
			
			}
		
		}
		
		audio_play_sound(shot1,1,0)
		
		var _move = function(){
			bset_objEnemy_generalMove(20)
		}
		
		if(current_frame % 120 == 0){
			move_timer = set_timer(_move, [], 70,1)
			array_push(my_timer_ids,move_timer)
		}
		
		_pattern1();
		
		
		
	}
	
}
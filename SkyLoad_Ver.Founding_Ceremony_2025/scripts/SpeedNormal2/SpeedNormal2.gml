// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function SpeedNormal2(){
	
		var _pattern1 = function(){
			shot_create(x,y,7,angle1,SHOT_ID.DROP_RED)
			angle1 += 19;
		}
		
		var _pattern2 = function(){
			shot_create(x,y,7,angle2,SHOT_ID.DROP_RED)
			angle2 -= 19;
		}
		
		
		if(current_frame % 40 == 0 || current_frame == 1){
			
			if(d1==1){
				pattern_timer = set_timer(_pattern1, [], 5,20)
				array_push(my_timer_ids, pattern_timer)
				d1 *= -1;
			}else if(d1==-1){
				pattern_timer2 = set_timer(_pattern2, [], 5,20)
				array_push(my_timer_ids, pattern_timer2)
				d1 *= -1;
			}
			

		}		
		
		if(current_frame % 7 == 0){
			audio_play_sound(shot1,1,0)
		}
		
}
	

// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function SpeedNormal1(){
	
		var _pattern1 = function(){
			shot_create(x,y,9,angle1,SHOT_ID.DROP_RED)
			angle1 += 23;
		}
		
		var _pattern2 = function(){
			shot_create(x,y,9,angle2,SHOT_ID.DROP_RED)
			angle2 -= 23;
		}
		
		
		
		var _move = function(){
			bset_objEnemy_generalMove(20)
		}
		
		if(current_frame % 190 == 0 || current_frame == 1){
			
			move_timer = set_timer(_move, [], 70,1)
			
			if(d1==1){
				pattern_timer = set_timer(_pattern1, [], 7,50)
				array_push(my_timer_ids, pattern_timer)
				d1 *= -1;
			}else if(d1==-1){
				pattern_timer2 = set_timer(_pattern2, [], 7,50)
				array_push(my_timer_ids, pattern_timer2)
				d1 *= -1;
			}
			
			array_push(my_timer_ids,move_timer)

		}		
		
		if(current_frame % 7 == 0){
			audio_play_sound(shot1,1,0)
		}
		
}
	

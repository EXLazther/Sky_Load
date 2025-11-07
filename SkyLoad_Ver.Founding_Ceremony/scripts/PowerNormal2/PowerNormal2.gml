// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function PowerNormal2(){
	
		var _pattern1 = function(){
			shot_create(x+cosdeg(angle2)*dis1,y+sindeg(angle2)*dis1,random_range(1,3),random(360),round(random_range(0,10.9)));
			
			dis1 += 1.5;
			angle2 += 5*d1;
				
			if(current_frame % 5 == 0){
				audio_play_sound(shot1,1,0)
			}
		
		}
		
		if(current_frame % 360 == 0 || current_frame == 1){
			angle2 = random(360)
			dis1 = 30;
			d1 *= -1;
			pattern_timer = set_timer(_pattern1, [], 2,150)
			array_push(my_timer_ids, pattern_timer)
		}
		
		
		
}
	

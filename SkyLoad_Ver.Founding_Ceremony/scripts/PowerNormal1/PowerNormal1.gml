// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function PowerNormal1(){
	
		var _pattern1 = function(){
			shot_create(x+cosdeg(random(360))*random(100),y+sindeg(random(360))*random(100),random_range(1,3),random(360),round(random_range(0,10.9)));
			
			if(current_frame % 4 == 0 || current_frame == 1){
				audio_play_sound(shot1,1,0)
			}
		}
		
		if(current_frame % 300 == 0 || current_frame == 1){
			pattern_timer = set_timer(_pattern1, [], 1,200)
			array_push(my_timer_ids, pattern_timer)
		
			
		}
		
		
}
	

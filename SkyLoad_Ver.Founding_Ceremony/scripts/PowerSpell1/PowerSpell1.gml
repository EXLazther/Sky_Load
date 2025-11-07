// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function PowerSpell1(){
	
	var _pattern1 = function(){
			var _shot1 = shot_create(x,y,9,angle1,SHOT_ID.BALL_L_RED)
			array_push(shot_list1,_shot1)
			shot_set_property(_shot1,SHOT_PROPERTY_ID.FRICTION,0.1,0);
			shot_set_reflect(_shot1,true,[1,1,1,1],5)
			angle1 += 60;
			
			var _explosion = function(index){
				if (instance_exists(shot_list1[index])) {
					
					for(var _i = 0; _i < 10; _i++;){
						var _shot2 = shot_create(shot_list1[index].x,shot_list1[index].y,random_range(1,3),random(360),round(random_range(3,10.9)));
					}
				
					instance_destroy(shot_list1[index]);
					audio_play_sound(kira,1,0)
				}
			}
			
			var _index_to_pass = array_length(shot_list1)-1;
			pattern_timer1 = set_timer(_explosion, _index_to_pass, 120,1)
			array_push(my_timer_ids, pattern_timer1)
			
			audio_play_sound(shot1,1,0)
		}
		
		var _array_clear = function(){
			shot_list1 = [];
		}
		
		if(current_frame % 300 == 0 || current_frame == 1){
			
			angle1 = random(360)
			pattern_timer = set_timer(_pattern1, [], 6,6)
			claer_timer = set_timer(_array_clear, [], 200,1)
			array_push(my_timer_ids, pattern_timer)
			array_push(my_timer_ids, claer_timer)
			
			
		}
		
		
}
	

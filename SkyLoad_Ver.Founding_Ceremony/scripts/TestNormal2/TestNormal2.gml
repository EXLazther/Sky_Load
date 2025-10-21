// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function TestNormal2(){
	
	if(current_frame % 180 == 0 || current_frame == 1){
		
		var _shot_pattern1 = function(){
			
			var _shot1 = shot_create_circle(x,y,4,angle1,5,SHOT_ID.BALL_YELLOW)
			//移動処理
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ANG_VEL,4*d1,0)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,-0.05,30)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,-0.06,60)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ANG_VEL,0,60)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,0,140)
			//自動削除処理
			shot_set_property(_shot1, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.LIFETIME, 300, 0)
		
		
			var _shot2 = shot_create_circle(x,y,4,-angle1,5,SHOT_ID.BALL_SKYBLUE)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ANG_VEL,-4*d1,0)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ACCEL,-0.05,30)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ACCEL,-0.06,60)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ANG_VEL,0,60)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ACCEL,0,140)
			//自動削除処理
			shot_set_property(_shot2, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.LIFETIME, 300, 0)
			
			
			angle1 += 2 * d1;
			audio_play_sound(shot1,1,0)
		}
		
		var _move = function(){
			bset_objEnemy_generalMove(40)
		}
		
		
		pattern1_timer = set_timer(_shot_pattern1, [], 4,13)
		move_timer = set_timer(_move, [], 95,1)
		d1 *= -1;
		
		array_push(my_timer_ids,pattern1_timer)
		array_push(my_timer_ids,move_timer)
		
		
	}
	
	if(current_frame % 10 == 0){
		
		//var _laser1 =  shot_create(x,y,0,angle1,SHOT_ID.LASER_BLUE)
	}
	
}
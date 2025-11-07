// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function TestNormal1(){
	
	if(current_frame % 180 == 0 || current_frame == 1){
		
		var _shot_pattern1 = function(){
			
			var _shot1 = shot_create_circle(x,y,4,angle1,5,SHOT_ID.BALL_PURPLE)
			//移動処理
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ANG_VEL,4*d1,0)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,-0.05,30)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,-0.1,60)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ANG_VEL,0,60)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,0,140)
			//自動削除処理
			shot_set_property(_shot1, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
			shot_set_property(_shot1, SHOT_PROPERTY_ID.LIFETIME, 300, 0)
		
		
			var _shot2 = shot_create_circle(x,y,6,-angle1,5,SHOT_ID.BALL_RED)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ANG_VEL,-6*d1,0)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ACCEL,-0.2,30)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ACCEL,-0.15,60)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ANG_VEL,0,60)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.ACCEL,0,120)
			//自動削除処理
			shot_set_property(_shot2, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
			shot_set_property(_shot2, SHOT_PROPERTY_ID.LIFETIME, 300, 0)
			
			
			angle1 += 3 * d1;
			audio_play_sound(shot1,1,0)
		}
		
		var _move = function(){
			bset_objEnemy_generalMove(60)
		}
		
		
		pattern_timer = set_timer(_shot_pattern1, [], 4,10)
		move_timer = set_timer(_move, [], 90,1)
		d1 *= -1;
		
		array_push(my_timer_ids,pattern_timer)
		array_push(my_timer_ids,move_timer)
		
	}
	
}
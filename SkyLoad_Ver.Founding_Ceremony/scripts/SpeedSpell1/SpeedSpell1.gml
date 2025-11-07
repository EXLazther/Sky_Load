// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function SpeedSpell1(){

	if(current_frame % 500 == 0 || current_frame == 10){

		for (var _i = 0; _i < 6; _i++;){
		
				_laser_y[_i] = random_range(200,400);
				_angle_l[_i] = random_range(30,-30);
				_angle_r[_i] = random_range(210,150);
		
		}

	
		var _laser = function(){
		
			for (var _j = 0; _j < 3; _j++;){
				laser_create_shoot(0,_laser_y[_j],20,_angle_l[_j],0.5,9,0.1,SHOT_ID.LASER_BLUE)
				
			}
		
			for (var _k = 0; _k < 3; _k++;){ 
				laser_create_shoot(BORDER.R,_laser_y[_k+3],20,_angle_r[_k],0.5,9,0.1,SHOT_ID.LASER_BLUE)
			}
			
			audio_play_sound(Laser2,1,0)
		
		}
	
		_shot_trace = function(_shot_x,_shot_y,_angle,_dis){
			var _shot1 = shot_create(_shot_x+cosdeg(-_angle)*_dis,_shot_y+sindeg(-_angle)*_dis,0,random_range(0,360),SHOT_ID.SQUARE_RED)
			shot_set_property(_shot1,SHOT_PROPERTY_ID.ACCEL,0.008,60);
		}
	
		var _shot_pattern = function(){
			for (var _i = 0; _i < 3; _i++;){
				for (var _j = 0; _j < 17; _j++;){
					_shot_trace(0,_laser_y[_i],_angle_l[_i],_j*30);
					_shot_trace(BORDER.R,_laser_y[_i+3],_angle_r[_i],_j*30);
				}
				audio_play_sound(shot1,1,0)
			}
		}
		
		set_timer(_laser,[],0,1);
		shot_timer = set_timer(_shot_pattern,[],130,1);
		array_push(my_timer_ids,shot_timer)
		
		
	}
	
	if(current_frame % 180 == 0){
		var _move = function(){
			bset_objEnemy_generalMove(80)
		}
		move_timer = set_timer(_move, [], 70,1)
		array_push(my_timer_ids,move_timer)
		
	}
}
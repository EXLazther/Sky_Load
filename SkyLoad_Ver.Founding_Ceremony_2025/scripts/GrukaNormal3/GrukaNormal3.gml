function GrukaNormal3(){
if (current_frame % 400 == 0 || current_frame == 1){
				var _x1 = random_range(1,100)
				for(var _i=0; _i<5; _i++;){
					for(var _j=0; _j<10; _j++;){
						 var _shot5 = shot_create(_x1+_i*3*40, y+_i*7-30, (_j+1)/2, -90, SHOT_ID.BALL_BLUE);
					}
				}
				for(var _i=0; _i<5; _i++;){
					for(var _j=0; _j<10; _j++;){
						 var _shot5 = shot_create(_x1+_i*3*40, y+_i*7-30, (_j+1)/2, 90, SHOT_ID.BALL_BLUE);
					}
				}
				shoot_delay1 = ObjBattleManager.current_frame+200;
				audio_play_sound(shot1,1,0)
			}
			
			if (ObjBattleManager.current_frame == shoot_delay1){
				var _x2 = random_range(420,520)
				for(var _i=0; _i<5; _i++;){
					for(var _j=0; _j<10; _j++;){
						var _shot5 = shot_create(_x2+_i*3*-40, y+_i*7-30, (_j+1)/2, -90, SHOT_ID.BALL_BLUE);
					}
				}
				for(var _i=0; _i<5; _i++;){
					for(var _j=0; _j<10; _j++;){
						var _shot5 = shot_create(_x2+_i*3*-40, y+_i*7-30, (_j+1)/2, 90, SHOT_ID.BALL_BLUE);
					}
				}
				
			}
}
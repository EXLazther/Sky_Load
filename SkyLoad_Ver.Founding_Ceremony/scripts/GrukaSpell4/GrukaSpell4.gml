function GrukaSpell4(){
if (current_frame % 180 == 0  || current_frame == 1){
	audio_play_sound(shot1,1,0)
				for(var _i=0; _i<5; _i++;){
					var _shot4 = shot_create(x,y,2, bget_angle_enemy_to_player(self),SHOT_ID.BALL_RED);
					shot_set_property(_shot4,SHOT_PROPERTY_ID.DIRECTION,bget_angle_enemy_to_player(self)+(_i-2)*15, 50);
					shot_set_property(_shot4,SHOT_PROPERTY_ID.SPEED,5, 50);
					
				}
			}
			
			if (ObjBattleManager.current_frame % 60 == 0  || ObjBattleManager.current_frame == 1){
				audio_play_sound(kira,1,0)
				var _x1 = ObjBattlePlayer.x;
				var _y1 = ObjBattlePlayer.y;
				
				for (var _j=0; _j<3; _j++;){
					for(var _k=0; _k<10; _k++;){
						var _shot5 = shot_create(_x1+(150*d1*-1)+_k*10*d1, _y1-100+_j*50+_k*7, 0, -90, SHOT_ID.SQUARE_RED);
	
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 90;
						
					}			
					
				}
				d1 *= -1;
			}
}
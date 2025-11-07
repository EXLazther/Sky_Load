event_inherited()
if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
			
		case 0:
			break;
		
		case 1:
			
			if (current_frame % 60 == 0){
				var _shot = shot_create_circle(x,y,4,random_range(0,360),6,SHOT_ID.BALL_BLUE)
				shot_set_aiming(_shot, 30)
				audio_play_sound(shot1,1,0)
			}
			
			break;
			
		}
	}
	
	if(ObjBattleManager.current_state == 2){
		ObjBattleManager.is_battle_victory = true;
	}
	
	
}
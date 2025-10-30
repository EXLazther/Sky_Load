event_inherited()
if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
		
		case 0:

			break;
		
		case 1:
			
			if (current_frame % 60 == 0){
				shot_create_circle(x,y,random_range(2,5),random_range(0,360),10,SHOT_ID.BALL_BLUE)
				audio_play_sound(shot1,1,0)
			}
			
			break;
			
		}
			
	
	}
	
	if(ObjBattleManager.current_state == 2){
		ObjBattleManager.is_battle_victory = true;
	}
	
	
}
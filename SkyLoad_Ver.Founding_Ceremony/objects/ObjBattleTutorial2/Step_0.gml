if (ObjBattleManager.is_battle_started) {

	switch ObjBattleManager.current_state {
		
		case 0:
			break;
		case 1:
			
			if (current_frame % 180 == 0){
				shot_create(x, y, 3, -90, 0);
				audio_play_sound(shot1,1,0)
			}
			
			break;
			
	
	}
	
	if(ObjBattleManager.current_state == 2){
		ObjBattleManager.is_battle_victory = true;
	}
	
}
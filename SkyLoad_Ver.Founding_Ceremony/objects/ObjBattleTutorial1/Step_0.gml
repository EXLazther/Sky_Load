if (ObjBattleManager.is_battle_started) {

	switch ObjBattleManager.current_phase {
		
		case 0:
			if (ObjBattleManager.current_frame >= 30){
				ObjBattleManager.current_phase = 1;
				ObjBattleManager.current_frame = 0;
				
			}
			break;
		
		case 1:
			y += 1;
			
			
			
			break;
			
	
	}
	
	
}
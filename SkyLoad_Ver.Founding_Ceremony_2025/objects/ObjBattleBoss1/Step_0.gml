if (ObjBattleManager.is_battle_started) {

	switch ObjBattleManager.current_phase {
		
		case 0:
			if (ObjBattleManager.current_frame >= 30){
				ObjBattleManager.current_phase = 1;
				ObjBattleManager.current_frame = 0;
				
			}
			break;
		
		case 1:
			if (ObjBattleManager.current_frame % 30 == 0){
			shot_create_circle(x, y, 3, random_range(0,45), 10, 0);
			angle1 += 40;
			break;
			}
	
	}
	
	
}
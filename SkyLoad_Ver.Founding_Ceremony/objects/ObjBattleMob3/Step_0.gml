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
				var _shot = shot_create_circle(x,y,4,random_range(0,360),6,SHOT_ID.BALL_BLUE)
				shot_set_aiming(_shot, 30)
			}
			
			break;
			
	
	}
	
	if(ObjBattleManager.boss_health <= 0){
		ObjBattleManager.is_battle_victory = true;
		instance_create_layer(x,y,"Particles",PartEliminate);
	}
	
	
}
if (ObjBattleManager.is_battle_started) {

	switch ObjBattleManager.current_phase {
		
		case 0:
			if (ObjBattleManager.current_frame >= 30){
				ObjBattleManager.current_phase = 1;
				ObjBattleManager.current_frame = 0;
				
				
				
			}
			break;
		
		case 1:
			
			if (ObjBattleManager.current_frame % 180 == 0 || ObjBattleManager.current_frame == 1){
				shot_create(x, y, 3, -90, 0);
				
				if (is_enemy_shooted == false) {
					for(var _i=0; _i<3; _i++;){
						shot_create(x-100*(_i-1), y+40, 1, -90, 0);
					}
					is_enemy_shooted = true;
				}
			}
			
			break;
			
	
	}
	
	if(ObjBattleManager.boss_health <= 0){
		ObjBattleManager.is_battle_victory = true;
		instance_create_layer(x,y,"Particles",PartEliminate);
	}
	
	
}
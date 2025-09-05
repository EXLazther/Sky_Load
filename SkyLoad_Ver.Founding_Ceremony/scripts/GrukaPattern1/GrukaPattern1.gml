function GrukaPattern1() {
	
	if (ObjBattleManager.current_state != 0){
		
		if (ObjBattleManager.current_frame % 60 == 0 || ObjBattleManager.current_frame == 1){
				
				
			for (var _i=0; _i<5; _i++;){
				var _shot1 = shot_create(x+cosdeg(angle1)*40, y+sindeg(angle1)*40, 4, -angle1, SHOT_ID.CLAW);
					
				shot_set_aiming(_shot1, 5);
				angle1 += 360/5;
					
			}
				
		}
		
		x = x + cosdeg(ObjBattleManager.current_frame*1.4)
		y = y + sindeg(ObjBattleManager.current_frame*3)
			
		if(ObjBattleManager.boss_health <= 0){
				ObjBattleManager.current_frame = 0;
				instance_create_layer(x,y,"Particles",PartExplosionStar);
		}
		
	}
}
					
	
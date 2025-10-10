function GrukaNormal1() {
	
	if (ObjBattleManager.current_state != 0){
		
		if (current_frame % 10 == 0 || current_frame == 0){
				
				var _shot1 = shot_create(x+cosdeg(angle1)*40, y+sindeg(angle1)*40, 1, -angle1, SHOT_ID.CLAW)
				angle1 += 33	
				
		}
		
		x = x + cosdeg(ObjBattleManager.current_frame*1.4)
		y = y + sindeg(ObjBattleManager.current_frame*3)
			
		
	}
}
					
	
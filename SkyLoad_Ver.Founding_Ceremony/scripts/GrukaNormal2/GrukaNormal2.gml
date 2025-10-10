function GrukaNormal2(){
	
			if (ObjBattleManager.current_frame % 30 == 0){
				shot_create_circle(x, y, 3, random_range(0, 360), 10, round(random_range(SHOT_ID.SQUARE_GREEN,SHOT_ID.SQUARE_RED)))
					
			}
			
			
}
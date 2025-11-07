function GrukaNormal1() {
		if (current_frame % 10 == 0 || current_frame == 0){
				
				var _shot1 = shot_create(x+cosdeg(angle1)*40, y+sindeg(angle1)*40, 1, -angle1, SHOT_ID.CLAW)
				angle1 += 33	
				audio_play_sound(shot1,1,0)
				
		}
		
		x = x + cosdeg(current_frame*1.4)
		y = y + sindeg(current_frame*3)
		
}
					
	
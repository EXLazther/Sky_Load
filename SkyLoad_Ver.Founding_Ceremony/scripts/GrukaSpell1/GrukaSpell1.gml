function GrukaSpell1() {
	
	if (current_frame % 12 == 0 || current_frame == 0){
		for (var _i=0; _i<2; _i++;){
			var _shot2 = shot_create(x1+count1*15, y1+_i*120+count1*4, 0, random_range(0, 360), SHOT_ID.CLAW);
			shot_set_move(_shot2, 0, random_range(0, 360), 0, 0, 0.05, 0, 1);	
		}
		
		count1 += 1;
		
		if(count1 >= 25){
			count1 = 0;
		}
	}	
}
					
	
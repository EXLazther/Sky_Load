function GrukaSpell2(){
if (current_frame % 300 == 0 || current_frame == 1){
	audio_play_sound(shot1,1,0)
		for(var _j=0; _j<5; _j++;){	
			for(var _i=0; _i<15; _i++;){
				var _shot4 = shot_create(x+(_j-2)*100, 150, 0, random_range(0, 360), SHOT_ID.BALL_BLUE);
				shot_set_property(_shot4, SHOT_PROPERTY_ID.SPEED, random_range(1,6), 60+_j*30);
				
			}
		}
	}
}
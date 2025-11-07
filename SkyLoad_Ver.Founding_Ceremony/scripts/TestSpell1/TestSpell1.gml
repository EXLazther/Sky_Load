function TestSpell1(){
	if(current_frame % 20 == 0){
		var _shot1 = 
		
		shot_create(
		random_range(0,BORDER.R),
		BORDER.B-10,
		0,
		0,
		SHOT_ID.STAR_YELLOW)
		
		shot_set_property(_shot1, SHOT_PROPERTY_ID.GRAVITY, 0.01, 0)
		shot_set_property(_shot1, SHOT_PROPERTY_ID.GRAVITY_DIRECTION, 90, 0)
		//自動削除処理
		shot_set_property(_shot1, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
		shot_set_property(_shot1, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
		shot_set_property(_shot1, SHOT_PROPERTY_ID.LIFETIME, 400, 0)
		
		audio_play_sound(kira,1,0)
		
		//laser_create_shoot(x,y,10,-90,0.5,5,0.4,SHOT_ID.LASER_BLUE)
	}
	
	if(current_frame % 120 == 0){
		var _shot2 = shot_create_circle(x,y,2,random_range(0,360),5,SHOT_ID.BALL_L_RED)
		audio_play_sound(shot1,1,0)
	}
}
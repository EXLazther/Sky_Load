function TestSpell2(){
	if(current_frame % 30 == 0){
		
		
		var _laser1 = 
		laser_create_shoot(
		random_range(BATTLE_BORDER.LEFT_BORDER-280,BATTLE_BORDER.RIGHT_BORDER-100),
		BATTLE_BORDER.UP_BORDER-100,
		8,
		-60,
		0.5,
		10,
		1,
		SHOT_ID.LASER_BLUE)
		
		
		//自動削除処理
		shot_set_property(_laser1, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
		shot_set_property(_laser1, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
		shot_set_property(_laser1, SHOT_PROPERTY_ID.LIFETIME, 400, 0)
		
		audio_play_sound(kira,1,0)
		
	}
	
	if(current_frame % 10 == 0){
		
		var _shot1 = 
		shot_create(
		random_range(BATTLE_BORDER.LEFT_BORDER-280,BATTLE_BORDER.RIGHT_BORDER-100),
		BATTLE_BORDER.UP_BORDER-100,
		random_range(2,8),
		random_range(-90,-30),
		round(random_range(SHOT_ID.STAR_BLUE,SHOT_ID.STAR_YELLOW))
		)
		
		//自動削除処理
		shot_set_property(_shot1, SHOT_PROPERTY_ID.D_OUTROOM, false, 0)
		shot_set_property(_shot1, SHOT_PROPERTY_ID.D_LIFETIME, true, 0)
		shot_set_property(_shot1, SHOT_PROPERTY_ID.LIFETIME, 400, 0)
	}
}
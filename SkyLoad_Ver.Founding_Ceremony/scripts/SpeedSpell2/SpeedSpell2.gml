// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function SpeedSpell2(){
	
	
	
	if(current_frame == 1){
		var target_x = (BATTLE_BORDER.RIGHT_BORDER-BATTLE_BORDER.LEFT_BORDER)/2+BATTLE_BORDER.LEFT_BORDER
		bset_objmove_interpolation(x,y,BATTLE_BORDER.CENTER_X,BATTLE_BORDER.CENTER_Y,30,INTERPOLATION_TYPE.ACCELE_DEACCELE)
		
		ObjBattleManager.boss_health = 50;
		
	}
	
	if((current_frame % 3 == 0) && (current_frame > 60)){
		var _shot1 = shot_create_circle(x,y,0,angle3,5,shot_id)
		shot_set_property(_shot1, SHOT_PROPERTY_ID.ACCEL,0.1,0)
		angle3 += 0.7+add;
		shot_id ++;
		add += 0.06*d1;
		
		if(abs(add) == 6.84){
			audio_play_sound(enemy_powereffect,1,0)
		}
		
		if(abs(add) > 8){
			add = 0;
			angle3 = random(360)
			d1 *= -1;
		}
		
		
		if((current_frame % 3 == 0) && (current_frame > 60)){
			audio_play_sound(shot1,1,0)
		}
		
		if(shot_id == SHOT_ID.DROP_RED+1){
			shot_id = SHOT_ID.DROP_BLUE;
		}
	}
	
}
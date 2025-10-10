function GrukaSpell3(){
shot_create(x, y, 3, bget_angle_enemy_to_player(self)+30, 0);
			shot_create(x, y, 3, bget_angle_enemy_to_player(self)-30, 0);	
			
			if (ObjBattleManager.current_frame % 60 == 0 || ObjBattleManager.current_frame == 1){
				var _shot6 = shot_create_circle(x, y, 3, random_range(0,360), 14, SHOT_ID.CLAW);
				shot_set_property(_shot6, SHOT_PROPERTY_ID.ANG_VEL, -0.6*d2, 0);
				d2 *= -1;
			}
}
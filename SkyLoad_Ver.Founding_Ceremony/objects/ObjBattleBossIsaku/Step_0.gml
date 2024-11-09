if (ObjBattleManager.is_battle_started) {

	switch ObjBattleManager.current_phase {
		
		case 0:
		//待機1
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, position_x1[3], position_y1[3], 40, 2)
			}
		
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 1;
				ObjBattleManager.current_frame = 0;		
				ObjBattleManager.boss_health = 50;
			}
			break;
		
		case 1:
		//通常1
			if (ObjBattleManager.current_frame % 60 == 0 || ObjBattleManager.current_frame == 1){
				
					shot_create_circle(x,y,3,random_range(0,360),20,SHOT_ID.SQUARE_PURPLE);
			}
				
			if (ObjBattleManager.current_frame % 180 == 0 || ObjBattleManager.current_frame == 1){
				
				bset_objmove_interpolation(x, y, position_x1[position_count1], position_y1[position_count1], 80, 2)
				if(position_count1 == 3){
					position_count1 = 0;
				}else{
					position_count1 ++;
				}
				
			}
					
			if(ObjBattleManager.boss_health <= 0){
					ObjBattleManager.current_phase = 2;
					ObjBattleManager.current_frame = 0;
					instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			
			break;
						
		case 2:
		//待機2
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 100, 30, 2)
				set_spell("「奔れ風のように」")
			}
			
			if (ObjBattleManager.current_frame >= 60){		
				ObjBattleManager.current_phase = 3;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 50;
				
			}
			break;
		
		case 3:
		//技1	
		
			if (ObjBattleManager.current_frame % 400 == 0 || ObjBattleManager.current_frame == 1){
				delay1 = ObjBattleManager.current_frame + 40;
				bset_objmove_interpolation(x, y, 288, -20, 30, 2)
				instance_create_layer(x,y,"Particles",PartExplosionRing);
			}
			
			if (ObjBattleManager.current_frame == delay1){
				rush = true;
			}
			
			if (rush == true){
				rush_time ++;
			}
				
			if (ObjBattleManager.current_frame % 30 == 0){
				if (rush == true && rush_time <= 200){
					bset_objmove_interpolation(288+270*d1, random_range(30, 70), 288+270*d1*-1, random_range(200, 300),20, 0);
					d1 *= -1;
				}else if(rush == true && rush_time >= 200){
					rush = false;
					rush_time = 0;
					bset_objmove_interpolation(x, y, 288, 100, 30, 2)
				}
				
			}
			
			if (ObjBattleManager.current_frame % 2 == 0 && rush == true){
				shot_create_circle(x,y,4,random_range(0,359),3,irandom_range(SHOT_ID.SQUARE_RED, SHOT_ID.SQUARE_GREEN));
			}
			
			
			
			if(ObjBattleManager.boss_health <= 0){
					ObjBattleManager.current_phase = 4;
					ObjBattleManager.current_frame = 0;
					instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			break; 
			
		case 4:
		//待機3
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, position_x1[position_count1], position_y1[position_count1], 40, 2)
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 5;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 50;	
			} 
			break;
			
		case 5:
		//通常2
				if (ObjBattleManager.current_frame % 30 == 0 || ObjBattleManager.current_frame == 1){
				
					var _shot2 = shot_create(x,y,5,0,SHOT_ID.SQUARE_PURPLE);
					shot_set_aiming(_shot2, 4)
			}
			
			if (ObjBattleManager.current_frame % 60 == 0 || ObjBattleManager.current_frame == 1){
				
					shot_create_circle(x,y,1,random_range(0,360),10,SHOT_ID.SQUARE_RED);
			}
				
			if (ObjBattleManager.current_frame % 180 == 0 || ObjBattleManager.current_frame == 1){
				
				bset_objmove_interpolation(x, y, position_x1[position_count1], position_y1[position_count1], 80, 2)
				if(position_count1 == 3){
					position_count1 = 0;
				}else{
					position_count1 ++;
				}
				
			}
					
			if(ObjBattleManager.boss_health <= 0){
					ObjBattleManager.current_phase = 6;
					ObjBattleManager.current_frame = 0;
					instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			
			break;
			
		case 6:
			//待機4
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 100, 30, 2);
				set_spell("七災式 捕縛機動術")
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 7;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
			} 
			break;
		
		case 7:
		//技2
			if (ObjBattleManager.current_frame % 400 == 0 || ObjBattleManager.current_frame == 1){
				
				target_road_x = random_range(150, 500);
				bset_objmove_interpolation(x, y, target_road_x, 100, 30, 2);
				
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x-random_range(50,500),50,random_range(0.1,4),-90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 400;
				}
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x+random_range(50,500),50,random_range(0.1,4),-90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 400;
				}
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x-random_range(50,500),500,random_range(0.1,4),90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime =400;
				}
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x+random_range(50,500),500,random_range(0.1,4),90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 400;
				}
			}
			
			
			if(ObjBattleManager.boss_health <= 0){
						ObjBattleManager.is_battle_victory = true;
						ObjBattleManager.current_frame = 0;
						global.battle_finished[0] = true;
						instance_create_layer(x,y,"Particles",PartEliminate);
			}
			break;
	}
} 
/*if (ObjBattleManager.is_battle_started) {

	switch ObjBattleManager.current_phase {
		
		case 0:
		//待機1
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 150, 40, 2)
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
				
				
				for (var _i=0; _i<5; _i++;){
					var _shot1 = shot_create(x+cosdeg(angle1)*40, y+sindeg(angle1)*40, 4, -angle1, SHOT_ID.CLAW);
					
					shot_set_aiming(_shot1, 5);
					angle1 += 360/5;
					
				}
				
			}
		
			x = x + cosdeg(ObjBattleManager.current_frame*1.4)*4
			y = y + sindeg(ObjBattleManager.current_frame*3)*4;
			
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
				set_spell("「列爪撃」")
			}
			
			if (ObjBattleManager.current_frame >= 60){
				
				ObjBattleManager.current_phase = 3;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;
			}
			break;
		
		case 3:
		//技1
			if (ObjBattleManager.current_frame % 6 == 0 || ObjBattleManager.current_frame == 1){
			
			
			
				
				for (var _i=0; _i<2; _i++;){
						var _shot2 = shot_create(x1+count1*15, y1+_i*120+count1*4, 0, random_range(0, 360), SHOT_ID.CLAW);
						shot_set_move(_shot2, 0, random_range(0, 360), 0, 0, 0.05, 0, 1);	
					}
					
				count1 += 1;
	
				if(count1 >= 25){
					count1 = 0;
				}
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
				bset_objmove_interpolation(x, y, 288+cosdeg(0)*200, 253+sindeg(0), 50, 2);
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 5;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
			} 
			break;
			
		case 5:
		//通常2
			x = 288 + cosdeg(ObjBattleManager.current_frame)*200;
			y = 253 + sindeg(ObjBattleManager.current_frame)*200;
			if (ObjBattleManager.current_frame % 30 == 0){
				var _shot3 = shot_create(x, y, 6, 0, SHOT_ID.BALL_BLUE);
					shot_set_aiming(_shot3, 5);
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
				set_spell("「破裂爆弾」")
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 7;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
				
			} 
			break;
		
		case 7:
		//技2
			if (ObjBattleManager.current_frame % 300 == 0 || ObjBattleManager.current_frame == 1){
				
				for(var _j=0; _j<5; _j++;){	
					for(var _i=0; _i<15; _i++;){
						var _shot4 = shot_create(x+(_j-2)*100, 150, 0, random_range(0, 360), SHOT_ID.BALL_BLUE);
						shot_set_property(_shot4, SHOT_PROPERTY_ID.SPEED, random_range(1,6), 60+_j*30);
					}
				}
			}
			
			if(ObjBattleManager.boss_health <= 0){
					ObjBattleManager.current_phase = 8;
					ObjBattleManager.current_frame = 0;
					instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			break; 
			
		case 8:
			//待機5
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 100, 50, 2);
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 9;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
			} 
			break;
		
		case 9:
			//通常3
			if (ObjBattleManager.current_frame % 400 == 0 || ObjBattleManager.current_frame == 1){
				var _x1 = random_range(1,40)
				for(var _i=0; _i<10; _i++;){
					
					for(var _j=0; _j<10; _j++;){
						 var _shot5 = shot_create(_x1+_i*3*20, y+_i*7-30, (_j+3)/2, -90, SHOT_ID.BALL_BLUE);
					}
				}
				for(var _i=0; _i<10; _i++;){
					for(var _j=0; _j<10; _j++;){
						 var _shot5 = shot_create(_x1+_i*3*20, y+_i*7-30, (_j+3)/2, 90, SHOT_ID.BALL_BLUE);
					}
				}
				shoot_delay1 = ObjBattleManager.current_frame+200;
			}
			
			if (ObjBattleManager.current_frame == shoot_delay1){
				var _x2 = random_range(480,520)
				for(var _i=0; _i<10; _i++;){
					for(var _j=0; _j<10; _j++;){
						var _shot5 = shot_create(_x2+_i*3*-20, y+_i*7-30, (_j+3)/2, -90, SHOT_ID.BALL_BLUE);
					}
				}
				for(var _i=0; _i<10; _i++;){
					
					for(var _j=0; _j<10; _j++;){
						var _shot5 = shot_create(_x2+_i*3*-20, y+_i*7-30, (_j+3)/2, 90, SHOT_ID.BALL_BLUE);
					}
				}
			}
			
			if(ObjBattleManager.boss_health <= 0){
						ObjBattleManager.current_phase = 10;
						ObjBattleManager.current_frame = 0;
						instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			break;
			
		case 10:
			//待機6
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 100, 50, 2);
				set_spell("「紅華カザグルマ」")
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 11;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
			} 
			break;
			
		case 11:
			//技3
			shot_create(x, y, 3, bget_angle_enemy_to_player(self)+30, 0);
			shot_create(x, y, 3, bget_angle_enemy_to_player(self)-30, 0);	
			
			if (ObjBattleManager.current_frame % 60 == 0 || ObjBattleManager.current_frame == 1){
				var _shot6 = shot_create_circle(x, y, 3, random_range(0,360), 30, SHOT_ID.CLAW);
				shot_set_property(_shot6, SHOT_PROPERTY_ID.ANG_VEL, -0.6*d2, 0);
				d2 *= -1;
			}
			
			
			if(ObjBattleManager.boss_health <= 0){
						ObjBattleManager.current_phase = 12;
						ObjBattleManager.current_frame = 0;
						instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			break;
			
		case 12:
			//待機7
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 100, 50, 2);
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 13;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
				instance_create_layer(x+32,y+32,"Particles",PartCharge);
			} 
			break;
			
		case 13:
			//通常4
			if (ObjBattleManager.current_frame % 230 == 0 || ObjBattleManager.current_frame == 1){
				instance_create_layer(x,y,"Particles",PartCharge);
				shoot_delay2 = ObjBattleManager.current_frame+60;
			}
			
			if (ObjBattleManager.current_frame == shoot_delay2){
				bset_objmove_interpolation(x, y, ObjBattlePlayer.x, ObjBattlePlayer.y, 40, 2);
				shoot_delay3 = ObjBattleManager.current_frame+80;
				angle2 = bget_angle_enemy_to_player(self)
			
				for(var _i=0; _i<60; _i++;){
					shot_create(x,y,random_range(12,16),angle2+random_range(-20,20),SHOT_ID.BALL_BLUE)
				}
			
			}
			
			if (ObjBattleManager.current_frame <= shoot_delay2+40 && ObjBattleManager.current_frame >= shoot_delay2){
				for(var _i=0; _i<2; _i++;){
					shot_create(x,y,random_range(6,12),angle2+random_range(-10,10)+180,SHOT_ID.BALL_RED)
				}
			}
				
			if (ObjBattleManager.current_frame == shoot_delay3){
				bset_objmove_interpolation(x, y, 288, 100, 40, 2);
				for(var _i=0; _i<30; _i++;){
					
				}
			}
			
			if(ObjBattleManager.boss_health <= 0){
						ObjBattleManager.current_phase = 14;
						ObjBattleManager.current_frame = 0;
						instance_create_layer(x,y,"Particles",PartExplosionStar);
			}
			break;
			
			
		case 14:
			//待機8
			if (ObjBattleManager.current_frame = 10){
				bset_objmove_interpolation(x, y, 288, 100, 50, 2);
				set_spell("「傭兵式拷問術」")
			}
			
			if (ObjBattleManager.current_frame >= 60){
				ObjBattleManager.current_phase = 15;
				ObjBattleManager.current_frame = 0;
				ObjBattleManager.boss_health = 100;	
				
			} 
			break;
		
		case 15:
			//技4
			if (ObjBattleManager.current_frame % 180 == 0  || ObjBattleManager.current_frame == 1){
				for(var _i=0; _i<5; _i++;){
					var _shot4 = shot_create(x,y,2, bget_angle_enemy_to_player(self),SHOT_ID.BALL_RED);
					shot_set_property(_shot4,SHOT_PROPERTY_ID.DIRECTION,bget_angle_enemy_to_player(self)+(_i-2)*15, 50);
					shot_set_property(_shot4,SHOT_PROPERTY_ID.SPEED,5, 50);
				}
			}
			
			if (ObjBattleManager.current_frame % 30 == 0  || ObjBattleManager.current_frame == 1){
				
				var _x1 = ObjBattlePlayer.x;
				var _y1 = ObjBattlePlayer.y;
				
				for (var _j=0; _j<3; _j++;){
					for(var _k=0; _k<10; _k++;){
						var _shot5 = shot_create(_x1+(150*d1*-1)+_k*10*d1, _y1-100+_j*50+_k*7, 0, -90, SHOT_ID.BALL_BLUE);
						/*shot_set_property(_shot5, SHOT_PROPERTY_ID.D_LIFETIME,1,1);
						shot_set_property(_shot5, SHOT_PROPERTY_ID.LIFETIME,0,1);
						show_debug_message(_shot5.auto_destory_lifetime_enabled);
						//プロパティ設定変数の不具合で上手く設定ができないので後日
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 82;
					}			
				}
				d1 *= -1;
			}
			
			if(ObjBattleManager.boss_health <= 0){
						ObjBattleManager.is_battle_victory = true;
						ObjBattleManager.current_frame = 0;
						instance_create_layer(x,y,"Particles",PartEliminate);
			}
			break;
	}
	
	
	
	
} 


function GrukaNormal4(){
if (current_frame % 230 == 0 || current_frame == 1){
				instance_create_layer(x,y,"Particles",PartCharge);
				audio_play_sound(enemy_powereffect,1,0)
				shoot_delay2 = current_frame+60;
			}
			
			if (current_frame == shoot_delay2){
				bset_objmove_interpolation(x, y, ObjBattlePlayer.x, ObjBattlePlayer.y, 40, 2);
				shoot_delay3 = current_frame+80;
				angle2 = bget_angle_enemy_to_player(self)
			}
			
			if (current_frame <= shoot_delay2+40 && current_frame >= shoot_delay2 && current_frame % 10 == 0){
				shot_create_circle(x,y,2,random_range(0,360),6,SHOT_ID.SQUARE_PURPLE)
				audio_play_sound(shot1,1,0)
			}
				
			if (current_frame == shoot_delay3){
				bset_objmove_interpolation(x, y, 288, 100, 40, 2);
			}
			
}
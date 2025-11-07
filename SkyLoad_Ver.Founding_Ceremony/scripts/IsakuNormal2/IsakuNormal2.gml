function IsakuNormal2(){
if (current_frame % 30 == 0 || current_frame == 1){
				
					var _shot2 = shot_create(x,y,2,0,SHOT_ID.SQUARE_PURPLE);
					shot_set_aiming(_shot2, 4)
			}
			
			if (current_frame % 60 == 0 || current_frame == 1){
				
					shot_create_circle(x,y,1,random_range(0,360),5,SHOT_ID.SQUARE_RED);
					audio_play_sound(shot1,1,0)
			}
				
			if (current_frame % 180 == 0 || current_frame == 1){
				
				bset_objmove_interpolation(x, y, position_x1[position_count1], position_y1[position_count1], 80, 2)
				if(position_count1 == 3){
					position_count1 = 0;
				}else{
					position_count1 ++;
				}
				
			}
}
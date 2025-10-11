function IsakuNormal1(){
if (current_frame % 60 == 0 || current_frame == 1){
				
					shot_create_circle(x,y,3,random_range(0,360),8,SHOT_ID.SQUARE_PURPLE);
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
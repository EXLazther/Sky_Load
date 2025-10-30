function IsakuSpell1(){
if (current_frame % 400 == 0 || current_frame == 1){
				delay1 = current_frame + 40;
				bset_objmove_interpolation(x, y, 288, -20, 30, 2)
				instance_create_layer(x,y,"Particles",PartExplosionRing);
			}
			
			if (current_frame == delay1){
				rush = true;
			}
			
			if (rush == true){
				rush_time ++;
			}
				
			if (current_frame % 30 == 0){
				if (rush == true && rush_time <= 200){
					bset_objmove_interpolation(288+270*d1, random_range(30, 70), 288+270*d1*-1, random_range(200, 300),20, 0);
					d1 *= -1;
				}else if(rush == true && rush_time >= 200){
					rush = false;
					rush_time = 0;
					bset_objmove_interpolation(x, y, 288, 100, 30, 2)
				}
				
			}
			
			if (current_frame % 5 == 0 && rush == true){
				shot_create_circle(x,y,random_range(1,3),random_range(0,359),2,irandom_range(SHOT_ID.SQUARE_RED, SHOT_ID.SQUARE_GREEN));
				audio_play_sound(shot1,1,0)
			}
}
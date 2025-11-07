// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function TestSpell3(){
	
	var _shot_x = x+lengthdir_x(abs(sindeg(angle2)*80),angle1)
	var _shot_y = y+lengthdir_y(abs(sindeg(angle2)*80),angle1)
	var _shot_x2 = x+lengthdir_x(abs(sindeg(angle2)*80),angle1+180)
	var _shot_y2 = y+lengthdir_y(abs(sindeg(angle2)*80),angle1+180)
	
	var _shots = [];
	
	if(current_frame % 6 == 0){
		laser_create_shoot(_shot_x,_shot_y,7,angle1,0.5,7,0.2,SHOT_ID.LASER_RED)
		_shots[0] = shot_create(_shot_x,_shot_y,3,angle1+22,SHOT_ID.STAR_YELLOW)
		laser_create_shoot(_shot_x2,_shot_y2,7,angle1+180,0.5,7,0.2,SHOT_ID.LASER_BLUE)
		_shots[1] = shot_create(_shot_x2,_shot_y2,3,angle1+22+180,SHOT_ID.STAR_YELLOW)
		
		
		angle1 += 22*d1;
		angle2 += 6;
		
	}
	
	if(current_frame % 180 == 0){
		d1 *= -1;
	}
	
	if(current_frame % 9 == 0){
		audio_play_sound(kira,1,0)
	}
			
	var _move = function(){
		bset_objEnemy_generalMove(
		90,
		0+30, 
		BORDER.R-30,
		0+80,
		0+180
		)
	}
		
	var _se = function(){
		audio_play_sound(kira,1,0)
	}
		
		
	if(current_frame % 300 == 0){
	_move()
	}

}
// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function TestNormal1(){
	
	if(current_frame % 10 == 0){
		
		angle2 = random_range(0,360);
		var _shot1 = shot_create_circle(x+cosdeg(angle2)*90,y+sindeg(angle2)*90,2,angle1,5,SHOT_ID.BALL_BLUE)
		angle1 += 10;
		
	}
	
}
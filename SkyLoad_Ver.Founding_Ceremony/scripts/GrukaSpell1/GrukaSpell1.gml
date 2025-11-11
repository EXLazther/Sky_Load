function GrukaSpell1()
{
	//パターンメソッド
	var _pattern1 = function()
	{
			
		se_play(shot1)
		
		for(var _i=0; _i<3; _i++){
		
			var _shot_x = x - 100 * (_i - 1);
			
			var _angle = 0;
			switch (_i)
			{
				case 0:
					_angle = random_range(20, -20);
					break;
				case 1:
					_angle = random(360);
					break;
				case 2:
					_angle = random_range(200, 160);
					break;
			}
			var _shot1 = shot_create(_shot_x, y1, SHOT_ID.CLAW, 0, -90);
			shot_set_move(_shot1, 0, _angle, 0, 0, 0, 0, 60, true, true)
			shot_set_speed_transition(_shot1,random_range(1,2),60,120)
		}
		y1 += 20;
	}
	
	var _initialize = function()
	{
		y1 = 0;
	}
	
	shot_pattern2(_pattern1, [], 2, 40, 300, _initialize)

}
					
	
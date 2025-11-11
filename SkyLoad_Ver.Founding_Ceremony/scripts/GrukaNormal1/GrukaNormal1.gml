function GrukaNormal1()
{				
	//パターンメソッド		
	var _pattern1 = function()
	{
		angle1 = random(360)
		var _d = -1
		
		for(var _i=0; _i<2; _i++;){ 
			var _shot1 = shot_create_circle(x, y, SHOT_ID.CLAW, 4, angle1, 20, 5, 30*_d, shot1);
			shot_set_speed_transition(_shot1, 2, 40, 60)
			_d *= -1;
		}
		
	}
		
	//パターンタイムライン
	shot_pattern(_pattern1,[],30);
	
}
					
	
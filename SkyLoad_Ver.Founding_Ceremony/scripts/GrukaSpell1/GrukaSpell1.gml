function GrukaSpell1()
{
	//パターンメソッド
	var _pattern1 = function()
	{
		for(var _i=0; _i<3; _i++;){
			
			var _shot_x = x-100*(_i-1)
			
			shot_create(x-100*(_i-1),y1,SHOT_ID.CLAW,3,random_range(-20,-160),shot1)
		}
		y1 += 10;
	}
	
	var _initialize = function()
	{
		y1 = 0;
	}
	
	//パターンタイムライン
	shot_pattern2(_pattern1, [], 1, 60, 180, _initialize)

}
					
	
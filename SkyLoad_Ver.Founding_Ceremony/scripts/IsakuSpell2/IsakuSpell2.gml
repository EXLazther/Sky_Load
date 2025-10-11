// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function IsakuSpell2(){
if (current_frame % 400 == 0 || current_frame == 1){
				
				target_road_x = random_range(150, 500);
				bset_objmove_interpolation(x, y, target_road_x, 100, 30, 2);
				
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x-random_range(50,500),50,random_range(0.1,1),-90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 400;
				}
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x+random_range(50,500),50,random_range(0.1,1),-90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 400;
				}
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x-random_range(50,500),500,random_range(0.1,1),90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime =400;
				}
				for(var _i=0; _i<100; _i++;){
						var _shot5 = shot_create(target_road_x+random_range(50,500),500,random_range(0.1,1),90,irandom_range(SHOT_ID.SQUARE_PURPLE, SHOT_ID.SQUARE_GREEN));
						shot_set_property(_shot5,SHOT_PROPERTY_ID.ACCEL, 0.1, 200);
						_shot5.auto_destory_lifetime_enabled = true;
						_shot5.lifetime = 400;
				}
			}
}
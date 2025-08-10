// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function ScrSpell1(_current_frame, _angle){
	
	if (_current_frame % 10 == 0){
		shot_create_circle(self.x, self.y, 3, _angle, 30, 0);
	}
	
	return _angle + 10;
}
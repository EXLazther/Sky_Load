// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function Debug1(){
	
	if(current_frame % 180 == 0 || current_frame == 1){
		shot_create(x,y,3,-90,0)
	}
}
		
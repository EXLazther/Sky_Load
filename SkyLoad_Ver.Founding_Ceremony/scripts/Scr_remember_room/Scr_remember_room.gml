// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
function b_remember_room(){
		var _now_room=room_get_name(room);
		global.current_room=_now_room;		
}

var _s=id;
if(ds_map_exists(global.text_setted,"event_26")&&!ds_map_exists(global.text_setted,"event_29"))
{
	text_id="talk_2_1";
}
if(ds_map_exists(global.text_setted,"event_29")&&!ds_map_exists(global.text_setted,"event_32"))
{
	text_id="talk_2_2";
}
if(ds_map_exists(global.text_setted,"event_34")&&ds_map_exists(global.text_setted,"event_35"))
{
	text_id="talk_2_3";
}
if place_meeting(x +10,y+40, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
		m_scr_game_text(_s.text_id,_s.system_id);
		}
		
}
if place_meeting(x -10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)
{
	with( instance_create_depth(0, 0, -9999, Obj_textbox))
		{
		m_scr_game_text(_s.text_id,_s.system_id);
		}
		
}
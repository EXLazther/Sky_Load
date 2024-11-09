var _s = id; 
if place_meeting(x,y, Player) &&!instance_exists(obj_textbox)
{
	with( instance_create_depth(0, 0, -9999, obj_textbox))
	{
		scr_game_text(_s.text_id,_s.system_id);
	}
	instance_destroy();
	ds_map_add(global.text_setted, text_id,true );
}
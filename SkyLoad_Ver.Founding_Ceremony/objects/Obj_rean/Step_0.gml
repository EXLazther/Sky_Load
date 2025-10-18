/*var dx = x - chaser_x;
    var dy = y - chaser_y;
	chaser_x=x
	chaser_y=y

    if (abs(dx) > abs(dy)) {
        if (dx > 0) fase = RIGHT;
        else        fase = LEFT;
    } else if (abs(dy) > 0) {
        if (dy > 0) fase = DOWN;
        else        fase = UP;
    }
	image_speed=1.5
	sprite_index=sprite[fase];
	
*/
var _s=id
if(!instance_exists(m_ScrObjMoveInter))
{
	if(ds_map_exists(global.text_setted,"event_34")&&ds_map_exists(global.text_setted,"event_35"))
	{
		text_id="talk_2_12";
	}
	if place_meeting(x +10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
			m_scr_game_text(_s.text_id,_s.system_id);
			}
		
	}
	if place_meeting(x -10,y-10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
			with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
				m_scr_game_text(_s.text_id,_s.system_id);
			}
	}
}
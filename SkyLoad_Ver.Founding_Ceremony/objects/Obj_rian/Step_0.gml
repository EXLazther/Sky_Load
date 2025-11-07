/*var dx = x - chaser_x;
    var dy = y - chaser_y;
	chaser_x=x
	chaser_y=y

    if (abs(dx) > abs(dy)) {
        if (dx > 0) face = RIGHT;
        else        face = LEFT;
    } else if (abs(dy) > 0) {
        if (dy > 0) face = DOWN;
        else        face = UP;
    }
	image_speed=1.5
	sprite_index=sprite[face];
	*/

sprite_index=sprite[face];
mask_index=sprite[DOWN];
if(instance_exists(Obj_Player))
{
	set_face=Obj_Player.face;
}
if(!instance_exists(m_ScrObjMoveInter))
{
	image_index=0
}
var _s=id;
if(!instance_exists(m_ScrObjMoveInter))
{
	if(ds_map_exists(global.text_setted,"event_34")&&ds_map_exists(global.text_setted,"event_35"))
	{
		text_id="talk_2_12";
	}
	if place_meeting(x -10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)
	{
	if(set_face==LEFT)
	{
		face=RIGHT;
	}
	if(set_face==UP)
	{
		face=DOWN;
	}
	sprite_index=sprite[face]
		with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
				m_scr_game_text(_s.text_id,_s.system_id);
			}
	}
	if place_meeting(x+10,y-10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
	{
		sprite_index=sprite[face]
		if(set_face==RIGHT)
		{
			face=LEFT;
		}
		else if(set_face==DOWN)
		{
			face=UP;
		}
			with( instance_create_depth(0, 0, -9999, Obj_textbox))
			{
				m_scr_game_text(_s.text_id,_s.system_id);
			}
	}
}
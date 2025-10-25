if(!instance_exists(m_ScrObjMoveInter))
{
	image_index=0;
}
mask_index=sprite[DOWN];
sprite_index=sprite[face]
set_x=x-Obj_Player.x;
set_y=y-Obj_Player.y;
set_face=Obj_Player.face;

var _s=id
if(Obj_Player.set_remove_number==1)
{
	text_id="talk_1_10";
}
if(Obj_Player.set_remove_number!=1)
{
	text_id="talk_1_9";
}
if place_meeting(x +10,y+10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
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
if place_meeting(x -10,y-10, Obj_Player) && keyboard_check_pressed(ord("Z")) && !instance_exists(Obj_textbox)&&!instance_exists(m_ScrObjMoveInter)
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
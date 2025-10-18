mask_index=sprite[DOWN]
if(instance_exists(Obj_Player)&&!instance_exists(Obj_textbox)&&!instance_exists(Obj_changeroom)&&end_text==0)
{
	Player_x=Obj_Player.x;
	Player_y=Obj_Player.y;
	var dx = x - chaser_x;
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
}
if(!instance_exists(Obj_Player)&&!instance_exists(Obj_textbox))
{
	
	x=chaser_x;
	y=chaser_y;
	image_index=0;
}
if(instance_exists(Obj_textbox)&&end_text>0)
{
	path_end();
	image_index=0;
}
	
var _s=id;
if(place_meeting(x+30,y+30, Obj_Player)||place_meeting(x+30,y-30, Obj_Player)&&!instance_exists(Obj_textbox)&&end_text==0)
{
	if(Obj_Player.y<y)
	{
		fase=DOWN;
	}
	if(Obj_Player.y>y)
	{
		fase=UP;
	}
	if(Obj_Player.x<x)
	{
		fase=LEFT;
	}
	if(Obj_Player.x>x)
	{
		fase=RIGHT;
	}
	sprite_index=sprite[fase];
	path_end();
	end_text=1;
	with(instance_create_depth(0, 0, -9999, Obj_textbox))
	{
		m_scr_game_text(_s.text_id,_s.system_id);
	}
	
}
if end_text==1&&!instance_exists(Obj_changeroom)&&!instance_exists(Obj_textbox)
{
		var inst=instance_create_depth(0,0,-9999,Obj_changeroom);
		inst.target_x=target_x;
		inst.target_y=target_y;
		inst.target_rm=target_rm;
		inst.target_face=target_face;
		end_text=1;
}
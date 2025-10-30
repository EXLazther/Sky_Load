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
        if (dx > 0) face = RIGHT;
        else        face = LEFT;
    } else if (abs(dy) > 0) {
        if (dy > 0) face = DOWN;
        else        face = UP;
    }
	image_speed=1.5
	sprite_index=sprite[face];
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
if(place_meeting(x+20,y-20, Obj_Player)&&!instance_exists(Obj_textbox)&&end_text==0)
{
	setface_x=Player_x-x;
	setface_y=Player_y-y;
	if(face==UP)
	{
		if(setface_y<10&&setface_x>30)
		{
			face=RIGHT;
		}
		if(setface_y<10&&setface_x<30)
		{
			face=LEFT
		}
	}
	if(face==DOWN)
	{
		if(setface_y>10&&setface_x>30)
		{
			face=RIGHT;
		}
		if(setface_y>10&&setface_x<30)
		{
			face=LEFT
		}
	}
	if(face==LEFT)
	{
		if(setface_y>30&&setface_x<10)
		{
			face=DOWN;
		}
		if(setface_y<30&&setface_x<10)
		{
			face=UP
		}
	}
	if(face==RIGHT)
	{
		if(setface_y>30&&setface_x>10)
		{
			face=DOWN;
		}
		if(setface_y<30&&setface_x>10)
		{
			face=UP
		}
	}
	sprite_index=sprite[face];
	path_end();
	end_text=1;
	with(instance_create_depth(0, 0, -9999, Obj_textbox))
	{
		m_scr_game_text(_s.text_id,_s.system_id);
	}
	
}
if(place_meeting(x-20,y+20, Obj_Player)&&!instance_exists(Obj_textbox)&&end_text==0)
{
	if(face==UP)
	{
		if(setface_y<10&&setface_x>10)
		{
			face=RIGHT;
		}
		if(setface_y<10&&setface_x>10)
		{
			face=LEFT
		}
	}
	if(face==DOWN)
	{
		if(setface_y>10&&setface_x>10)
		{
			face=RIGHT;
		}
		if(setface_y>10&&setface_x>10)
		{
			face=LEFT
		}
	}
	sprite_index=sprite[face];
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
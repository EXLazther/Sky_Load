mask_index=sprite[DOWN]
if(instance_exists(Obj_Player)&&!instance_exists(Obj_textbox)&&!instance_exists(Obj_changeroom)&&end_text==0)
{
	Player_x=Obj_Player.x;
	Player_y=Obj_Player.y;
	chaser_x=x
	chaser_y=y
	mp_potential_step_object(Player_x,Player_y,3,Obj_wall);
	var dx = x - chaser_x;
    var dy = y - chaser_y;

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
else if(!instance_exists(Obj_Player)&&!instance_exists(Obj_textbox))
{
	x=chaser_x;
	y=chaser_y;
	image_index=0;
}
if(instance_exists(Obj_textbox)&&end_text!=0)
{
	image_index=0;
}
	
var _s=id;
if(place_meeting(x-10,y-10, Obj_Player)&&!instance_exists(Obj_textbox)&&end_text==0)
{
	
	end_text=1;
	with(instance_create_depth(0, 0, -9999, Obj_textbox))
	{
		m_scr_game_text(_s.text_id,_s.system_id);
	}
	
}
if(place_meeting(x+10,y+10, Obj_Player)&&!instance_exists(Obj_textbox)&&end_text==0)
{
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
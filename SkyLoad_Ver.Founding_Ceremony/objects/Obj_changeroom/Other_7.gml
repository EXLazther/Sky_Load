if (instance_exists(Obj_Player))
{

room_goto(target_rm);
Obj_Player.x=target_x;
Obj_Player.y=target_y;
Obj_Player.face=target_face;
}
image_speed=-1;
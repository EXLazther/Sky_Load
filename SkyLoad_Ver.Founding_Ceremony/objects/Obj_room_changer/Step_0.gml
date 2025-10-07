/// @description 説明をここに挿入
// このエディターでコードを作成することができます

if place_meeting(x,y,Obj_Player)&& !instance_exists(Obj_changeroom)&&!instance_exists(Obj_textbox)
{
		var inst=instance_create_depth(0,0,-9999,Obj_changeroom);
		inst.target_x=target_x;
		inst.target_y=target_y;
		inst.target_rm=target_rm;
		inst.target_face=target_face;
}
	
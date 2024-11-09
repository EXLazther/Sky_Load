/// @description 説明をここに挿入
// このエディターでコードを作成することができます
if place_meeting(x,y,Player)&& !instance_exists(Object_changeroom)
	{
		var inst=instance_create_depth(0,0,-9999,Object_changeroom);
		inst.target_x=target_x;
		inst.target_y=target_y;
		inst.target_rm=target_rm;
		inst.target_face=target_face;
	}
	
/// @description 説明をここに挿入
// このエディターでコードを作成することができます
if place_meeting(x,y,Obj_Player)&& !instance_exists(ObjBattleChangeRoom)
	{
		
		b_remember_room();
		ds_map_add(global.set_battle,battleset_id,true)
		var inst=instance_create_depth(0,0,-9999,ObjBattleChangeRoom);
		inst.target_rm=target_rm;
		inst.target_enemy = target_enemy;
	}
	
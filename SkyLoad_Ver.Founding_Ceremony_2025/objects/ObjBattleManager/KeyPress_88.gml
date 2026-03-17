if(is_battle_started == false){
	is_battle_started = true;
}

if (is_battle_defeated == true){
	room_goto(RoomBattle)
	audio_stop_sound(gulca);
}

if (is_battle_victory == true){
	global.player_health = player_health;
	//instance_activate_object(obj_main_pause);
	audio_stop_sound(gulca);
	room_goto(asset_get_index(global.current_room));
	instance_create_layer(global.current_x,global.current_y,"Instances",Obj_Player);
	instance_create_layer(0,0,"Instances",Obj_Sound_test);
	
	//突貫工事(修正時消してもらって構わない)
	if(enemy==ObjBattleSpeed||enemy==ObjBattleTest1)
	{
		global.continuous=true
	}
	if(enemy==ObjBattlePower)
	{
		global.continuous=false;
	}
}


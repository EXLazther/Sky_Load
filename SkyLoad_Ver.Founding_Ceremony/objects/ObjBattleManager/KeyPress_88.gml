if(is_battle_started == false){
	is_battle_started = true;
}

if (is_battle_defeated == true){
	room_goto(RoomBattle)
	audio_stop_sound(gulca);
}

if (is_battle_victory == true && finished_count + 180 < current_frame){
	global.player_health = player_health;
	//instance_activate_object(obj_main_pause);
	audio_stop_sound(gulca);
	room_goto(asset_get_index(global.current_room));
	instance_create_layer(global.current_x,global.current_y,"Instances",Obj_Player);
}


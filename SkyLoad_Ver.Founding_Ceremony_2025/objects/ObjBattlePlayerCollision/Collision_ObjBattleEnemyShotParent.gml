if (is_hit_invicible == false){
	ObjBattleManager.player_health -= 1;
	is_hit_invicible = true;
	alarm[0] = hit_invisible_interval
	audio_play_sound(player_damage,1,0,1,0,0.8)
}
if (auto_destroy_collide_enabled == true){
	instance_destroy();
}

with(ObjBattlePlayer){
	ObjBattleManager.player_health -= 1;
}
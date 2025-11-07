if (player_health < 0){
	
	instance_deactivate_layer("Instances")
	is_battle_defeated = true;
}

if (is_battle_victory == true){
	instance_deactivate_layer("Instances")
	is_battle_victory = true;
	
}

if (instance_exists(enemy) == true && global.encounting_enemy_type == 0 && boss_hp_getted == false){
	boss_health = enemy.hp
	boss_hp_getted = true;
}

if is_battle_started == true
{
	current_frame ++;
	
}
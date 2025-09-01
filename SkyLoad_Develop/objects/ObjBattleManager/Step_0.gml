if (instance_exists(enemy) == true && global.encounting_enemy_type == 0 && boss_hp_getted == false){
	boss_health = enemy.hp
	boss_hp_getted = true;
}

if is_battle_started == true
{
	current_frame ++;
	
	if (boss_health <= 0){
		current_phase++;
		boss_health = 100
	}
}


// 状態が変更されたかをチェック
if (current_phase != previous_phase) {  
	
    // 現在の状態を前回の状態として保存
    previous_phase = current_phase;
}


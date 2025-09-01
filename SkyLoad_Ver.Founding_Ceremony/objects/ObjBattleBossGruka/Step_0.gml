if (ObjBattleManager.is_battle_started) {
	
	if (!ObjBattleManager.current_state = ENEMY_STATE.IDLE){

		switch ObjBattleManager.current_state {
		
			case 1: script_execute(GrukaPattern1)
			case 2: script_execute(GrukaPattern1)
		
		}
	}
}

// 状態が変更されたかをチェック
if (ObjBattleManager.current_phase != ObjBattleManager.previous_phase ) {
    	bset_objmove_interpolation(x, y, 288, 150, 40, 2)
		set_enemy_idle(40)
}



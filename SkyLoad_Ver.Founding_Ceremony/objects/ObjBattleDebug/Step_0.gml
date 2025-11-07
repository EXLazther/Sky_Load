event_inherited()
if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
			case 0: break;
			case 1: script_execute(Debug1) break;
			case 2: script_execute(TestSpell1) break;
			case 3: script_execute(TestNormal2) break;
			case 4: script_execute(TestSpell2) break;
			case 5: script_execute(TestNormal3) break;
			case 6: script_execute(TestSpell3) break;
		}
	}
    
	if(ObjBattleManager.current_state == 7){
		ObjBattleManager.is_battle_victory = true;
	}
	
}
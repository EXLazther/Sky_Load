event_inherited()
if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
			case 0: break;
			case 1: script_execute(IsakuNormal1) break;
			case 2: script_execute(IsakuSpell1) break;
			case 3: script_execute(IsakuNormal2) break;
			case 4: script_execute(IsakuSpell2) break;
		}
	}
	
	if(ObjBattleManager.current_state == 5){
		ObjBattleManager.is_battle_victory = true;
	}
}


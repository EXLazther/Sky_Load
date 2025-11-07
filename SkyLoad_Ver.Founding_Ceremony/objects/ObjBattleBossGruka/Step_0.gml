event_inherited()
if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
			case 0: break;
			case 1: script_execute(GrukaNormal1) break;
			case 2: script_execute(GrukaSpell1) break;
			case 3: script_execute(GrukaNormal2) break;
			case 4: script_execute(GrukaSpell2) break;
			case 5: script_execute(GrukaNormal3) break;
			case 6: script_execute(GrukaSpell3) break;
			case 7: script_execute(GrukaNormal4) break;
			case 8: script_execute(GrukaSpell4) break;
		}
	}
	
	if(ObjBattleManager.current_state == 9){
		ObjBattleManager.is_battle_victory = true;
	}
}


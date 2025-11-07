/// @description 説明をここに挿入
// このエディターでコードを作成することができます

// Inherit the parent event
event_inherited();

if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
			case 0: break;
			case 1: script_execute(SpeedNormal1) break;
			case 2: script_execute(SpeedSpell1) break;
			case 3: script_execute(SpeedNormal2) break;
			case 4: script_execute(SpeedSpell2) break;
		}
	}
    
	if(ObjBattleManager.current_state == 5){
		ObjBattleManager.is_battle_victory = true;
	}
	
}
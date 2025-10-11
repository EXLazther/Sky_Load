/// @description 説明をここに挿入
// このエディターでコードを作成することができます

// Inherit the parent event
event_inherited();

if (ObjBattleManager.is_battle_started) {

	if(is_idle == false){
		switch ObjBattleManager.current_state {
			case 0: break;
			case 1: script_execute(TestNormal1) break;
		}
	}
	
	if(ObjBattleManager.current_state == 2){
		ObjBattleManager.is_battle_victory = true;
	}
	
}
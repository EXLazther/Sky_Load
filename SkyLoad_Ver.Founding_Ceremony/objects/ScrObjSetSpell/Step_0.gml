count++;
//フェーズの切り替えで削除
current_phase = ObjBattleManager.current_phase;
if(!(current_phase == spawn_phase) && !(current_phase == spawn_phase - 1)){
	instance_destroy()
}
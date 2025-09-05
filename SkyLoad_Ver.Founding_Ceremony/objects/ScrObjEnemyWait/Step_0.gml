if(frame_current <= frame_wait){
	ObjBattleManager.current_state = 0
	frame_current++;
}else if (frame_current > frame_wait){
	ObjBattleManager.current_state = start_state
	instance_destroy()
}
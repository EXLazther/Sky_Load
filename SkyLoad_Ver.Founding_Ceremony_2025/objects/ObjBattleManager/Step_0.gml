if is_battle_started == true
{
	current_frame++;
	
	if (boss_health <= 0){
		current_state++;
		current_frame = 0;
		boss_health = 100
		
		
		for (var i = 0; i < ds_list_size(listeners); i++) {
			var listener_id = listeners[| i];
			// 念のため、リスナーが存在するか確認
			if (instance_exists(listener_id)) {
				with (listener_id) {
					event_perform(ev_other, ev_user0);
				}
			}
		}
	}
}

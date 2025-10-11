if (auto_destroy_outroom_enabled == true && is_spawning = false){
	var _destroy = function(target){instance_destroy(target)}
	set_timer(_destroy, self, 0, 1)
}



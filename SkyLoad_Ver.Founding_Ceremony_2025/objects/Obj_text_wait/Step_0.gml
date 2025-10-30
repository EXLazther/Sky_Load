if (frame_current <= frame_wait) 
{
	Obj_move_manager.current_state=1;
    frame_current++;
}
else if(frame_current > frame_wait)
{
	Obj_move_manager.current_state=start_state;
    instance_destroy();
}
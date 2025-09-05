if(!instance_exists(m_ScrObjMoveInter))
{
	if(global.set_motionflag==1)
	{
	frame_path++;
	
	global.set_motionflag=0;
	}
}
if(frame_path!=frame_previous_path)
{
	frame_previous_path=frame_path;
	show_debug_message(frame_path)
	show_debug_message(frame_previous_path)
	
}
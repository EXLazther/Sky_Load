if(!set_reverse)
{
	path_start(set_path, 2, path_action_restart, false);
	path_position=set_position
}
if(set_reverse)
{
	path_start(set_path, 2, path_action_restart, true);
	path_position =set_position;
}
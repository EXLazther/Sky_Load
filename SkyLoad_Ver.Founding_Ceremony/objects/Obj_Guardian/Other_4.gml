if(!set_reverse)
{
	path_start(set_path, 2, path_action_reverse, false);
}
if(set_reverse)
{
	path_start(set_path, 2, path_action_reverse, true);
	path_position = 1;
}